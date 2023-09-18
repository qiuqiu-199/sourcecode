package com.fsck.k9.activity;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.AlertDialog;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.fsck.k9.Account;
import com.fsck.k9.K9;
import com.fsck.k9.Preferences;
import com.fsck.k9.R;
import com.fsck.k9.activity.compose.MessageActions;
import com.fsck.k9.activity.misc.SwipeGestureDetector;
import com.fsck.k9.activity.setup.AccountSettings;
import com.fsck.k9.activity.setup.FolderSettings;
import com.fsck.k9.activity.setup.Prefs;
import com.fsck.k9.fragment.MessageListFragment;
import com.fsck.k9.helper.ParcelableUtil;
import com.fsck.k9.mailstore.StorageManager;
import com.fsck.k9.preferences.Storage;
import com.fsck.k9.preferences.StorageEditor;
import com.fsck.k9.search.LocalSearch;
import com.fsck.k9.search.SearchSpecification;
import com.fsck.k9.ui.messageview.MessageViewFragment;
import com.fsck.k9.view.MessageHeader;
import com.fsck.k9.view.MessageTitleView;
import com.fsck.k9.view.ViewSwitcher;
import de.cketti.library.changelog.ChangeLog;
import java.io.Serializable;
import timber.log.Timber;

/* loaded from: classes.dex */
public class MessageList extends K9Activity implements FragmentManager.OnBackStackChangedListener, SwipeGestureDetector.OnSwipeGestureListener, MessageListFragment.MessageListFragmentListener, MessageViewFragment.MessageViewFragmentListener, ViewSwitcher.OnSwitchCompleteListener {
    private Account account;
    private ActionBar actionBar;
    private View actionBarMessageList;
    private View actionBarMessageView;
    private ProgressBar actionBarProgress;
    private TextView actionBarSubTitle;
    private MessageTitleView actionBarSubject;
    private TextView actionBarTitle;
    private TextView actionBarUnread;
    private View actionButtonIndeterminateProgress;
    private DisplayMode displayMode;
    private int firstBackStackId;
    private String folderName;
    private int lastDirection;
    private StorageManager.StorageListener mStorageListener;
    private Menu menu;
    private MenuItem menuButtonCheckMail;
    private MessageListFragment messageListFragment;
    private boolean messageListWasDisplayed;
    private MessageReference messageReference;
    private ViewGroup messageViewContainer;
    private MessageViewFragment messageViewFragment;
    private View messageViewPlaceHolder;
    private boolean noThreading;
    private LocalSearch search;
    private boolean singleAccountMode;
    private boolean singleFolderMode;
    private ViewSwitcher viewSwitcher;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fsck.k9.activity.MessageList$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$fsck$k9$activity$MessageList$DisplayMode;

        /* JADX WARN: Can't parse signature for local variable: 
        java.lang.NullPointerException
         */
        static {
            DisplayMode[] $r0 = DisplayMode.values();
            int $i0 = $r0.length;
            int[] $r1 = new int[$i0];
            $SwitchMap$com$fsck$k9$activity$MessageList$DisplayMode = $r1;
            try {
                int[] $r12 = $SwitchMap$com$fsck$k9$activity$MessageList$DisplayMode;
                DisplayMode $r2 = DisplayMode.MESSAGE_LIST;
                int $i02 = $r2.ordinal();
                $r12[$i02] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                int[] $r13 = $SwitchMap$com$fsck$k9$activity$MessageList$DisplayMode;
                DisplayMode $r22 = DisplayMode.MESSAGE_VIEW;
                int $i03 = $r22.ordinal();
                $r13[$i03] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                int[] $r14 = $SwitchMap$com$fsck$k9$activity$MessageList$DisplayMode;
                DisplayMode $r23 = DisplayMode.SPLIT_VIEW;
                int $i04 = $r23.ordinal();
                $r14[$i04] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class DisplayMode {
        private static final /* synthetic */ DisplayMode[] $VALUES;
        public static final DisplayMode MESSAGE_LIST;
        public static final DisplayMode MESSAGE_VIEW;
        public static final DisplayMode SPLIT_VIEW;

        /* JADX WARN: Can't parse signature for local variable: 
        java.lang.NullPointerException
         */
        static {
            DisplayMode $r0 = new DisplayMode("MESSAGE_LIST", 0);
            MESSAGE_LIST = $r0;
            DisplayMode $r02 = new DisplayMode("MESSAGE_VIEW", 1);
            MESSAGE_VIEW = $r02;
            DisplayMode $r03 = new DisplayMode("SPLIT_VIEW", 2);
            SPLIT_VIEW = $r03;
            DisplayMode $r04 = MESSAGE_LIST;
            DisplayMode $r05 = MESSAGE_VIEW;
            DisplayMode $r06 = SPLIT_VIEW;
            DisplayMode[] $r1 = {$r04, $r05, $r06};
            $VALUES = $r1;
        }

        private DisplayMode(String str, int i) {
        }

        /* JADX WARN: Can't parse signature for local variable: 
        java.lang.NullPointerException
         */
        public static DisplayMode valueOf(String name) {
            Enum $r1 = Enum.valueOf(DisplayMode.class, name);
            DisplayMode $r2 = (DisplayMode) $r1;
            return $r2;
        }

        /* JADX WARN: Can't parse signature for local variable: 
        java.lang.NullPointerException
         */
        public static DisplayMode[] values() {
            DisplayMode[] $r1 = $VALUES;
            Object $r0 = $r1.clone();
            DisplayMode[] $r12 = (DisplayMode[]) $r0;
            return $r12;
        }
    }

    /* loaded from: classes.dex */
    private final class StorageListenerImplementation implements StorageManager.StorageListener {
        private StorageListenerImplementation() {
        }

        @Override // com.fsck.k9.mailstore.StorageManager.StorageListener
        public void onMount(String providerId) {
        }

        /* JADX WARN: Can't parse signature for local variable: 
        java.lang.NullPointerException
         */
        /* JADX WARN: Can't parse signature for local variable: 
        java.lang.NullPointerException
        	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
        	at java.util.ArrayList.forEach(ArrayList.java:1249)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
        	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
         */
        @Override // com.fsck.k9.mailstore.StorageManager.StorageListener
        public void onUnmount(String providerId) {
            MessageList $r3 = MessageList.this;
            Account $r4 = $r3.account;
            if ($r4 != null) {
                MessageList $r32 = MessageList.this;
                Account $r42 = $r32.account;
                String $r5 = $r42.getLocalStorageProviderId();
                boolean $z0 = providerId.equals($r5);
                if ($z0) {
                    MessageList $r33 = MessageList.this;
                    $r33.runOnUiThread(new Runnable() { // from class: com.fsck.k9.activity.MessageList.StorageListenerImplementation.1
                        /* JADX WARN: Can't parse signature for local variable: 
                        java.lang.NullPointerException
                         */
                        @Override // java.lang.Runnable
                        public void run() {
                            StorageListenerImplementation $r1 = StorageListenerImplementation.this;
                            MessageList $r2 = MessageList.this;
                            $r2.onAccountUnavailable();
                        }
                    });
                }
            }
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    public MessageList() {
        StorageListenerImplementation $r1 = new StorageListenerImplementation();
        this.mStorageListener = $r1;
        this.firstBackStackId = -1;
        boolean $z0 = K9.messageViewShowNext();
        byte $b0 = $z0 ? (byte) 2 : (byte) 1;
        this.lastDirection = $b0;
        this.messageListWasDisplayed = false;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    public static Intent actionDisplayMessageIntent(Context context, MessageReference messageReference) {
        Intent r2 = new Intent(context, MessageList.class);
        r2.addFlags(67108864);
        String $r3 = messageReference.toIdentityString();
        r2.putExtra("message_reference", $r3);
        return r2;
    }

    public static void actionDisplaySearch(Context context, SearchSpecification searchSpecification, boolean z, boolean newTask) {
        actionDisplaySearch(context, searchSpecification, z, newTask, true);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    public static void actionDisplaySearch(Context context, SearchSpecification searchSpecification, boolean z, boolean z2, boolean clearTop) {
        Intent $r2 = intentDisplaySearch(context, searchSpecification, z, z2, clearTop);
        context.startActivity($r2);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void addMessageListFragment(MessageListFragment messageListFragment, boolean addToBackStack) {
        FragmentManager $r2 = getFragmentManager();
        FragmentTransaction $r3 = $r2.beginTransaction();
        $r3.replace(R.id.message_list_container, messageListFragment);
        if (addToBackStack) {
            $r3.addToBackStack(null);
        }
        this.messageListFragment = messageListFragment;
        int $i0 = $r3.commit();
        if ($i0 >= 0) {
            int $i1 = this.firstBackStackId;
            if ($i1 < 0) {
                this.firstBackStackId = $i0;
            }
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x035e  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0361  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void configureMenu(android.view.Menu r17) {
        /*
            Method dump skipped, instructions count: 1300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageList.configureMenu(android.view.Menu):void");
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0246, code lost:
        if (r8 == false) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x045a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x048b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x04bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean decodeExtras(android.content.Intent r42) {
        /*
            Method dump skipped, instructions count: 1214
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageList.decodeExtras(android.content.Intent):boolean");
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void displayViews() {
        int[] $r1 = AnonymousClass2.$SwitchMap$com$fsck$k9$activity$MessageList$DisplayMode;
        DisplayMode $r2 = this.displayMode;
        int $i0 = $r2.ordinal();
        switch ($r1[$i0]) {
            case 1:
                showMessageList();
                return;
            case 2:
                showMessageView();
                return;
            case 3:
                this.messageListWasDisplayed = true;
                MessageViewFragment $r3 = this.messageViewFragment;
                if ($r3 == null) {
                    showMessageViewPlaceHolder();
                    return;
                }
                MessageViewFragment $r32 = this.messageViewFragment;
                MessageReference $r4 = $r32.getMessageReference();
                if ($r4 != null) {
                    MessageListFragment $r5 = this.messageListFragment;
                    $r5.setActiveMessage($r4);
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void findFragments() {
        FragmentManager $r1 = getFragmentManager();
        Fragment $r2 = $r1.findFragmentById(R.id.message_list_container);
        MessageListFragment $r3 = (MessageListFragment) $r2;
        this.messageListFragment = $r3;
        Fragment $r22 = $r1.findFragmentById(R.id.message_view_container);
        MessageViewFragment $r4 = (MessageViewFragment) $r22;
        this.messageViewFragment = $r4;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @SuppressLint({"InflateParams"})
    private View getActionButtonIndeterminateProgress() {
        LayoutInflater $r1 = getLayoutInflater();
        View $r2 = $r1.inflate(R.layout.actionbar_indeterminate_progress_actionview, (ViewGroup) null);
        return $r2;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void initializeActionBar() {
        ActionBar $r1 = getActionBar();
        this.actionBar = $r1;
        ActionBar $r12 = this.actionBar;
        $r12.setDisplayShowCustomEnabled(true);
        ActionBar $r13 = this.actionBar;
        $r13.setCustomView(R.layout.actionbar_custom);
        ActionBar $r14 = this.actionBar;
        View $r2 = $r14.getCustomView();
        View $r3 = $r2.findViewById(R.id.actionbar_message_list);
        this.actionBarMessageList = $r3;
        View $r32 = $r2.findViewById(R.id.actionbar_message_view);
        this.actionBarMessageView = $r32;
        View $r33 = $r2.findViewById(R.id.message_title_view);
        MessageTitleView $r4 = (MessageTitleView) $r33;
        this.actionBarSubject = $r4;
        View $r34 = $r2.findViewById(R.id.actionbar_title_first);
        TextView $r5 = (TextView) $r34;
        this.actionBarTitle = $r5;
        View $r35 = $r2.findViewById(R.id.actionbar_title_sub);
        TextView $r52 = (TextView) $r35;
        this.actionBarSubTitle = $r52;
        View $r36 = $r2.findViewById(R.id.actionbar_unread_count);
        TextView $r53 = (TextView) $r36;
        this.actionBarUnread = $r53;
        ProgressBar $r6 = (ProgressBar) $r2.findViewById(R.id.actionbar_progress);
        this.actionBarProgress = $r6;
        this.actionButtonIndeterminateProgress = getActionButtonIndeterminateProgress();
        ActionBar $r15 = this.actionBar;
        $r15.setDisplayHomeAsUpEnabled(true);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void initializeDisplayMode(Bundle savedInstanceState) {
        boolean $z0 = useSplitView();
        if ($z0) {
            DisplayMode $r2 = DisplayMode.SPLIT_VIEW;
            this.displayMode = $r2;
            return;
        }
        if (savedInstanceState != null) {
            Serializable $r3 = savedInstanceState.getSerializable("displayMode");
            DisplayMode $r22 = (DisplayMode) $r3;
            DisplayMode $r4 = DisplayMode.SPLIT_VIEW;
            if ($r22 != $r4) {
                this.displayMode = $r22;
                return;
            }
        }
        MessageViewFragment $r5 = this.messageViewFragment;
        if ($r5 == null) {
            MessageReference $r6 = this.messageReference;
            if ($r6 == null) {
                DisplayMode $r23 = DisplayMode.MESSAGE_LIST;
                this.displayMode = $r23;
                return;
            }
        }
        DisplayMode $r24 = DisplayMode.MESSAGE_VIEW;
        this.displayMode = $r24;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        if (r6 == false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void initializeFragments() {
        /*
            r10 = this;
            r0 = 1
            android.app.FragmentManager r1 = r10.getFragmentManager()
            r1.addOnBackStackChangedListener(r10)
            com.fsck.k9.fragment.MessageListFragment r2 = r10.messageListFragment
            if (r2 == 0) goto L41
            r3 = 1
        Ld:
            if (r3 != 0) goto L31
            android.app.FragmentTransaction r4 = r1.beginTransaction()
            com.fsck.k9.search.LocalSearch r5 = r10.search
            boolean r6 = com.fsck.k9.K9.isThreadedViewEnabled()
            if (r6 == 0) goto L43
            boolean r6 = r10.noThreading
            if (r6 != 0) goto L43
        L1f:
            r7 = 0
            com.fsck.k9.fragment.MessageListFragment r2 = com.fsck.k9.fragment.MessageListFragment.newInstance(r5, r7, r0)
            r10.messageListFragment = r2
            com.fsck.k9.fragment.MessageListFragment r2 = r10.messageListFragment
            r7 = 2131558591(0x7f0d00bf, float:1.8742502E38)
            r4.add(r7, r2)
            r4.commit()
        L31:
            if (r3 != 0) goto L45
            com.fsck.k9.ui.messageview.MessageViewFragment r8 = r10.messageViewFragment
            if (r8 != 0) goto L45
            com.fsck.k9.activity.MessageReference r9 = r10.messageReference
            if (r9 == 0) goto L45
            com.fsck.k9.activity.MessageReference r9 = r10.messageReference
            r10.openMessage(r9)
            return
        L41:
            r3 = 0
            goto Ld
        L43:
            r0 = 0
            goto L1f
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fsck.k9.activity.MessageList.initializeFragments():void");
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void initializeLayout() {
        View $r2 = findViewById(R.id.message_view_container);
        ViewGroup $r1 = (ViewGroup) $r2;
        this.messageViewContainer = $r1;
        LayoutInflater $r3 = getLayoutInflater();
        ViewGroup $r12 = this.messageViewContainer;
        View $r22 = $r3.inflate(R.layout.empty_message_view, $r12, false);
        this.messageViewPlaceHolder = $r22;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    public static Intent intentDisplaySearch(Context context, SearchSpecification searchSpecification, boolean z, boolean z2, boolean clearTop) {
        Intent r2 = new Intent(context, MessageList.class);
        byte[] $r3 = ParcelableUtil.marshall(searchSpecification);
        r2.putExtra("search_bytes", $r3);
        r2.putExtra("no_threading", z);
        if (clearTop) {
            r2.addFlags(67108864);
        }
        if (z2) {
            r2.addFlags(268435456);
        }
        return r2;
    }

    private void onAccounts() {
        Accounts.listAccounts(this);
        finish();
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void onEditAccount() {
        Account $r1 = this.account;
        AccountSettings.actionSettings(this, $r1);
    }

    private void onEditPrefs() {
        Prefs.actionPrefs(this);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void onShowFolderList() {
        Account $r1 = this.account;
        FolderList.actionHandleAccount(this, $r1);
        finish();
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    private void onToggleTheme() {
        K9.Theme $r1 = K9.getK9MessageViewTheme();
        K9.Theme $r2 = K9.Theme.DARK;
        if ($r1 == $r2) {
            K9.Theme $r12 = K9.Theme.LIGHT;
            K9.setK9MessageViewThemeSetting($r12);
        } else {
            K9.Theme $r13 = K9.Theme.DARK;
            K9.setK9MessageViewThemeSetting($r13);
        }
        Thread $r3 = new Thread(new Runnable() { // from class: com.fsck.k9.activity.MessageList.1
            /* JADX WARN: Can't parse signature for local variable: 
            java.lang.NullPointerException
             */
            @Override // java.lang.Runnable
            public void run() {
                MessageList $r14 = MessageList.this;
                Context $r22 = $r14.getApplicationContext();
                Preferences $r32 = Preferences.getPreferences($r22);
                Storage $r4 = $r32.getStorage();
                StorageEditor $r5 = $r4.edit();
                K9.save($r5);
                $r5.commit();
            }
        });
        $r3.start();
        recreate();
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void removeMessageListFragment() {
        FragmentManager $r1 = getFragmentManager();
        FragmentTransaction $r2 = $r1.beginTransaction();
        MessageListFragment $r3 = this.messageListFragment;
        $r2.remove($r3);
        this.messageListFragment = null;
        $r2.commit();
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void removeMessageViewFragment() {
        MessageViewFragment $r1 = this.messageViewFragment;
        if ($r1 != null) {
            FragmentManager $r2 = getFragmentManager();
            FragmentTransaction $r3 = $r2.beginTransaction();
            MessageViewFragment $r12 = this.messageViewFragment;
            $r3.remove($r12);
            this.messageViewFragment = null;
            $r3.commit();
            showDefaultTitleView();
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    public static Intent shortcutIntent(Context context, String specialFolder) {
        Intent r2 = new Intent(context, MessageList.class);
        r2.setAction("shortcut");
        r2.putExtra("special_folder", specialFolder);
        r2.addFlags(67108864);
        r2.addFlags(268435456);
        return r2;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void showDefaultTitleView() {
        View $r1 = this.actionBarMessageView;
        $r1.setVisibility(8);
        View $r12 = this.actionBarMessageList;
        $r12.setVisibility(0);
        MessageListFragment $r2 = this.messageListFragment;
        if ($r2 != null) {
            MessageListFragment $r22 = this.messageListFragment;
            $r22.updateTitle();
        }
        MessageTitleView $r3 = this.actionBarSubject;
        $r3.setMessageHeader(null);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    private boolean showLogicalNextMessage() {
        boolean z0 = false;
        int $i0 = this.lastDirection;
        if ($i0 == 2) {
            z0 = showNextMessage();
        } else {
            int $i02 = this.lastDirection;
            if ($i02 == 1) {
                z0 = showPreviousMessage();
            }
        }
        if (z0) {
            return z0;
        }
        boolean z02 = showNextMessage();
        if (z02) {
            return true;
        }
        boolean z03 = showPreviousMessage();
        return z03;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void showMessageList() {
        this.messageListWasDisplayed = true;
        DisplayMode $r1 = DisplayMode.MESSAGE_LIST;
        this.displayMode = $r1;
        ViewSwitcher $r2 = this.viewSwitcher;
        $r2.showFirstView();
        MessageListFragment $r3 = this.messageListFragment;
        $r3.setActiveMessage(null);
        showDefaultTitleView();
        Menu $r4 = this.menu;
        configureMenu($r4);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void showMessageTitleView() {
        View $r1 = this.actionBarMessageList;
        $r1.setVisibility(8);
        View $r12 = this.actionBarMessageView;
        $r12.setVisibility(0);
        MessageViewFragment $r2 = this.messageViewFragment;
        if ($r2 != null) {
            displayMessageSubject(null);
            MessageViewFragment $r22 = this.messageViewFragment;
            $r22.updateTitle();
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void showMessageView() {
        DisplayMode $r1 = DisplayMode.MESSAGE_VIEW;
        this.displayMode = $r1;
        boolean $z0 = this.messageListWasDisplayed;
        if (!$z0) {
            ViewSwitcher $r2 = this.viewSwitcher;
            $r2.setAnimateFirstView(false);
        }
        ViewSwitcher $r22 = this.viewSwitcher;
        $r22.showSecondView();
        showMessageTitleView();
        Menu $r3 = this.menu;
        configureMenu($r3);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private void showMessageViewPlaceHolder() {
        removeMessageViewFragment();
        View $r2 = this.messageViewPlaceHolder;
        ViewParent $r1 = $r2.getParent();
        if ($r1 == null) {
            ViewGroup $r3 = this.messageViewContainer;
            View $r22 = this.messageViewPlaceHolder;
            $r3.addView($r22);
        }
        MessageListFragment $r4 = this.messageListFragment;
        $r4.setActiveMessage(null);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private boolean showNextMessage() {
        MessageViewFragment $r1 = this.messageViewFragment;
        MessageReference $r2 = $r1.getMessageReference();
        if ($r2 != null) {
            MessageListFragment $r3 = this.messageListFragment;
            boolean $z0 = $r3.openNext($r2);
            if ($z0) {
                this.lastDirection = 2;
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private boolean showPreviousMessage() {
        MessageViewFragment $r1 = this.messageViewFragment;
        MessageReference $r2 = $r1.getMessageReference();
        if ($r2 != null) {
            MessageListFragment $r3 = this.messageListFragment;
            boolean $z0 = $r3.openPrevious($r2);
            if ($z0) {
                this.lastDirection = 1;
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    private boolean useSplitView() {
        K9.SplitViewMode $r1 = K9.getSplitViewMode();
        Resources $r2 = getResources();
        Configuration $r3 = $r2.getConfiguration();
        int i0 = $r3.orientation;
        K9.SplitViewMode $r4 = K9.SplitViewMode.ALWAYS;
        if ($r1 != $r4) {
            K9.SplitViewMode $r42 = K9.SplitViewMode.WHEN_IN_LANDSCAPE;
            return $r1 == $r42 && i0 == 2;
        }
        return true;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void disableDeleteAction() {
        Menu $r2 = this.menu;
        MenuItem $r1 = $r2.findItem(R.id.delete);
        $r1.setEnabled(false);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        boolean z0 = false;
        int $i0 = event.getAction();
        if ($i0 == 0) {
            int $i02 = event.getKeyCode();
            z0 = onCustomKeyDown($i02, event);
        }
        if (z0) {
            return z0;
        }
        boolean z02 = super.dispatchKeyEvent(event);
        return z02;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void displayMessageSubject(String subject) {
        DisplayMode $r3 = this.displayMode;
        DisplayMode $r2 = DisplayMode.MESSAGE_VIEW;
        if ($r3 == $r2) {
            MessageTitleView $r4 = this.actionBarSubject;
            $r4.setText(subject);
            return;
        }
        MessageTitleView $r42 = this.actionBarSubject;
        $r42.showSubjectInMessageHeader();
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void enableActionBarProgress(boolean enable) {
        MenuItem $r1 = this.menuButtonCheckMail;
        if ($r1 != null) {
            MenuItem $r12 = this.menuButtonCheckMail;
            boolean $z1 = $r12.isVisible();
            if ($z1) {
                ProgressBar $r2 = this.actionBarProgress;
                $r2.setVisibility(8);
                if (!enable) {
                    MenuItem $r13 = this.menuButtonCheckMail;
                    $r13.setActionView((View) null);
                    return;
                }
                MenuItem $r14 = this.menuButtonCheckMail;
                View $r3 = this.actionButtonIndeterminateProgress;
                $r14.setActionView($r3);
                return;
            }
        }
        MenuItem $r15 = this.menuButtonCheckMail;
        if ($r15 != null) {
            MenuItem $r16 = this.menuButtonCheckMail;
            $r16.setActionView((View) null);
        }
        if (enable) {
            ProgressBar $r22 = this.actionBarProgress;
            $r22.setVisibility(0);
            return;
        }
        ProgressBar $r23 = this.actionBarProgress;
        $r23.setVisibility(8);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void goBack() {
        FragmentManager $r2 = getFragmentManager();
        DisplayMode $r3 = this.displayMode;
        DisplayMode $r1 = DisplayMode.MESSAGE_VIEW;
        if ($r3 == $r1) {
            showMessageList();
            return;
        }
        int $i0 = $r2.getBackStackEntryCount();
        if ($i0 > 0) {
            $r2.popBackStack();
            return;
        }
        MessageListFragment $r4 = this.messageListFragment;
        boolean $z0 = $r4.isManualSearch();
        if ($z0) {
            finish();
            return;
        }
        boolean $z02 = this.singleFolderMode;
        if ($z02) {
            onShowFolderList();
        } else {
            onAccounts();
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void messageHeaderViewAvailable(MessageHeader header) {
        MessageTitleView $r2 = this.actionBarSubject;
        $r2.setMessageHeader(header);
    }

    protected void onAccountUnavailable() {
        finish();
        Accounts.listAccounts(this);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent data) {
        super.onActivityResult(i, i2, data);
        int $i2 = i & 32768;
        if ($i2 == 32768) {
            int $i1 = i ^ 32768;
            MessageViewFragment $r2 = this.messageViewFragment;
            if ($r2 != null) {
                MessageViewFragment $r22 = this.messageViewFragment;
                $r22.onPendingIntentResult($i1, i2, data);
            }
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public void onBackPressed() {
        DisplayMode $r2 = this.displayMode;
        DisplayMode $r1 = DisplayMode.MESSAGE_VIEW;
        if ($r2 == $r1) {
            boolean $z0 = this.messageListWasDisplayed;
            if ($z0) {
                showMessageList();
                return;
            }
        }
        super.onBackPressed();
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.FragmentManager.OnBackStackChangedListener
    public void onBackStackChanged() {
        findFragments();
        DisplayMode $r2 = this.displayMode;
        DisplayMode $r1 = DisplayMode.SPLIT_VIEW;
        if ($r2 == $r1) {
            showMessageViewPlaceHolder();
        }
        Menu $r3 = this.menu;
        configureMenu($r3);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void onCompose(Account account) {
        MessageActions.actionCompose(this, account);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.activity.K9Activity, android.app.Activity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent $r3 = getIntent();
        boolean $z0 = UpgradeDatabases.actionUpgradeDatabases(this, $r3);
        if ($z0) {
            finish();
            return;
        }
        boolean $z02 = useSplitView();
        if ($z02) {
            setContentView(R.layout.split_message_list);
        } else {
            setContentView(R.layout.message_list);
            View $r5 = findViewById(R.id.container);
            ViewSwitcher $r6 = (ViewSwitcher) $r5;
            this.viewSwitcher = $r6;
            ViewSwitcher $r62 = this.viewSwitcher;
            Animation $r7 = AnimationUtils.loadAnimation(this, R.anim.slide_in_left);
            $r62.setFirstInAnimation($r7);
            ViewSwitcher $r63 = this.viewSwitcher;
            Animation $r72 = AnimationUtils.loadAnimation(this, R.anim.slide_out_right);
            $r63.setFirstOutAnimation($r72);
            ViewSwitcher $r64 = this.viewSwitcher;
            Animation $r73 = AnimationUtils.loadAnimation(this, R.anim.slide_in_right);
            $r64.setSecondInAnimation($r73);
            ViewSwitcher $r65 = this.viewSwitcher;
            Animation $r74 = AnimationUtils.loadAnimation(this, R.anim.slide_out_left);
            $r65.setSecondOutAnimation($r74);
            ViewSwitcher $r66 = this.viewSwitcher;
            $r66.setOnSwitchCompleteListener(this);
        }
        initializeActionBar();
        setupGestureDetector(this);
        Intent $r32 = getIntent();
        boolean $z03 = decodeExtras($r32);
        if ($z03) {
            findFragments();
            initializeDisplayMode(savedInstanceState);
            initializeLayout();
            initializeFragments();
            displayViews();
            ChangeLog r2 = new ChangeLog(this);
            boolean $z04 = r2.isFirstRun();
            if ($z04) {
                AlertDialog $r4 = r2.getLogDialog();
                $r4.show();
            }
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        MenuInflater $r2 = getMenuInflater();
        $r2.inflate(R.menu.message_list_option, menu);
        this.menu = menu;
        MenuItem $r3 = menu.findItem(R.id.check_mail);
        this.menuButtonCheckMail = $r3;
        return true;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchDebugInfoByOffset(DebugInfoApplyVisitor.java:106)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.searchAndApplyVarDebugInfo(DebugInfoApplyVisitor.java:83)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.lambda$applyDebugInfo$0(DebugInfoApplyVisitor.java:68)
    	at java.util.ArrayList.forEach(ArrayList.java:1249)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.applyDebugInfo(DebugInfoApplyVisitor.java:68)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoApplyVisitor.visit(DebugInfoApplyVisitor.java:55)
     */
    public boolean onCustomKeyDown(int i, KeyEvent event) {
        switch (i) {
            case R.styleable.K9Styles_iconActionFlag /* 21 */:
                MessageViewFragment $r2 = this.messageViewFragment;
                if ($r2 != null) {
                    DisplayMode $r3 = this.displayMode;
                    DisplayMode $r4 = DisplayMode.MESSAGE_VIEW;
                    if ($r3 == $r4) {
                        boolean $z0 = showPreviousMessage();
                        return $z0;
                    }
                    return false;
                }
                return false;
            case R.styleable.K9Styles_iconActionUnflag /* 22 */:
                MessageViewFragment $r22 = this.messageViewFragment;
                if ($r22 != null) {
                    DisplayMode $r32 = this.displayMode;
                    DisplayMode $r42 = DisplayMode.MESSAGE_VIEW;
                    if ($r32 == $r42) {
                        boolean $z02 = showNextMessage();
                        return $z02;
                    }
                    return false;
                }
                return false;
            case R.styleable.K9Styles_iconActionMarkAsRead /* 23 */:
            case R.styleable.K9Styles_iconActionAbout /* 26 */:
            case R.styleable.K9Styles_iconActionAdd /* 27 */:
            case R.styleable.K9Styles_iconActionImportExport /* 28 */:
            case R.styleable.K9Styles_iconActionSelectAll /* 30 */:
            case R.styleable.K9Styles_iconActionRequestReadReceipt /* 33 */:
            case R.styleable.K9Styles_messageListReadItemBackgroundColor /* 40 */:
            case R.styleable.K9Styles_messageViewAttachmentBackground /* 48 */:
            case R.styleable.K9Styles_messageComposeAddContactImage /* 49 */:
            case R.styleable.K9Styles_contactPictureFallbackDefaultBackgroundColor /* 51 */:
            case R.styleable.K9Styles_contactTokenBackgroundColor /* 52 */:
            case R.styleable.K9Styles_tintColorBulletPointNegative /* 55 */:
            case R.styleable.K9Styles_openpgp_black /* 56 */:
            case R.styleable.K9Styles_openpgp_orange /* 57 */:
            case R.styleable.K9Styles_openpgp_red /* 58 */:
            case R.styleable.K9Styles_openpgp_green /* 59 */:
            case R.styleable.K9Styles_openpgp_blue /* 60 */:
            case R.styleable.K9Styles_openpgp_grey /* 61 */:
            case R.styleable.K9Styles_openpgp_dark_grey /* 62 */:
            case 63:
            case 64:
            case 65:
            case 66:
            default:
                return false;
            case R.styleable.K9Styles_iconActionMarkAsUnread /* 24 */:
                MessageViewFragment $r23 = this.messageViewFragment;
                if ($r23 != null) {
                    DisplayMode $r33 = this.displayMode;
                    DisplayMode $r43 = DisplayMode.MESSAGE_LIST;
                    if ($r33 != $r43) {
                        boolean $z03 = K9.useVolumeKeysForNavigationEnabled();
                        if ($z03) {
                            showPreviousMessage();
                            return true;
                        }
                    }
                }
                DisplayMode $r34 = this.displayMode;
                DisplayMode $r44 = DisplayMode.MESSAGE_VIEW;
                if ($r34 != $r44) {
                    boolean $z04 = K9.useVolumeKeysForListNavigationEnabled();
                    if ($z04) {
                        MessageListFragment $r5 = this.messageListFragment;
                        $r5.onMoveUp();
                        return true;
                    }
                    return false;
                }
                return false;
            case R.styleable.K9Styles_iconActionRemoteSearch /* 25 */:
                MessageViewFragment $r24 = this.messageViewFragment;
                if ($r24 != null) {
                    DisplayMode $r35 = this.displayMode;
                    DisplayMode $r45 = DisplayMode.MESSAGE_LIST;
                    if ($r35 != $r45) {
                        boolean $z05 = K9.useVolumeKeysForNavigationEnabled();
                        if ($z05) {
                            showNextMessage();
                            return true;
                        }
                    }
                }
                DisplayMode $r36 = this.displayMode;
                DisplayMode $r46 = DisplayMode.MESSAGE_VIEW;
                if ($r36 != $r46) {
                    boolean $z06 = K9.useVolumeKeysForListNavigationEnabled();
                    if ($z06) {
                        MessageListFragment $r52 = this.messageListFragment;
                        $r52.onMoveDown();
                        return true;
                    }
                    return false;
                }
                return false;
            case R.styleable.K9Styles_iconActionUpload /* 29 */:
                MessageViewFragment $r25 = this.messageViewFragment;
                if ($r25 != null) {
                    MessageViewFragment $r26 = this.messageViewFragment;
                    $r26.onReplyAll();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_iconActionSave /* 31 */:
                MessageListFragment $r53 = this.messageListFragment;
                $r53.onCompose();
                return true;
            case R.styleable.K9Styles_iconActionCancel /* 32 */:
            case 67:
                DisplayMode $r37 = this.displayMode;
                DisplayMode $r47 = DisplayMode.MESSAGE_LIST;
                if ($r37 == $r47) {
                    MessageListFragment $r54 = this.messageListFragment;
                    $r54.onDelete();
                    return true;
                }
                MessageViewFragment $r27 = this.messageViewFragment;
                if ($r27 != null) {
                    MessageViewFragment $r28 = this.messageViewFragment;
                    $r28.onDelete();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_iconActionExpand /* 34 */:
                MessageViewFragment $r29 = this.messageViewFragment;
                if ($r29 != null) {
                    MessageViewFragment $r210 = this.messageViewFragment;
                    $r210.onForward();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_iconActionCollapse /* 35 */:
                DisplayMode $r38 = this.displayMode;
                DisplayMode $r48 = DisplayMode.MESSAGE_LIST;
                if ($r38 == $r48) {
                    MessageListFragment $r55 = this.messageListFragment;
                    $r55.onToggleFlagged();
                    return true;
                }
                MessageViewFragment $r211 = this.messageViewFragment;
                if ($r211 != null) {
                    MessageViewFragment $r212 = this.messageViewFragment;
                    $r212.onToggleFlagged();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_textColorPrimaryRecipientDropdown /* 36 */:
                DisplayMode $r39 = this.displayMode;
                DisplayMode $r49 = DisplayMode.MESSAGE_LIST;
                Toast $r6 = $r39 == $r49 ? Toast.makeText(this, (int) R.string.message_list_help_key, 1) : Toast.makeText(this, (int) R.string.message_view_help_key, 1);
                $r6.show();
                return true;
            case R.styleable.K9Styles_textColorSecondaryRecipientDropdown /* 37 */:
                MessageListFragment $r56 = this.messageListFragment;
                $r56.onReverseSort();
                return true;
            case R.styleable.K9Styles_backgroundColorChooseAccountHeader /* 38 */:
            case R.styleable.K9Styles_messageListActiveItemBackgroundColor /* 44 */:
                MessageViewFragment $r213 = this.messageViewFragment;
                if ($r213 != null) {
                    showPreviousMessage();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_messageListSelectedBackgroundColor /* 39 */:
            case R.styleable.K9Styles_messageListThreadCountForegroundColor /* 42 */:
                MessageViewFragment $r214 = this.messageViewFragment;
                if ($r214 != null) {
                    showNextMessage();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_messageListUnreadItemBackgroundColor /* 41 */:
                DisplayMode $r310 = this.displayMode;
                DisplayMode $r410 = DisplayMode.MESSAGE_LIST;
                if ($r310 == $r410) {
                    MessageListFragment $r57 = this.messageListFragment;
                    $r57.onMove();
                    return true;
                }
                MessageViewFragment $r215 = this.messageViewFragment;
                if ($r215 != null) {
                    MessageViewFragment $r216 = this.messageViewFragment;
                    $r216.onMove();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_messageListThreadCountBackground /* 43 */:
                MessageListFragment $r58 = this.messageListFragment;
                $r58.onCycleSort();
                return true;
            case R.styleable.K9Styles_messageListDividerColor /* 45 */:
                MessageListFragment $r59 = this.messageListFragment;
                if ($r59 != null) {
                    MessageListFragment $r510 = this.messageListFragment;
                    boolean $z07 = $r510.isSingleAccountMode();
                    if ($z07) {
                        onShowFolderList();
                        return true;
                    }
                    return true;
                }
                return true;
            case R.styleable.K9Styles_messageListCheckbox /* 46 */:
                MessageViewFragment $r217 = this.messageViewFragment;
                if ($r217 != null) {
                    MessageViewFragment $r218 = this.messageViewFragment;
                    $r218.onReply();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_messageViewBackgroundColor /* 47 */:
                MessageListFragment $r511 = this.messageListFragment;
                $r511.toggleMessageSelect();
                return true;
            case R.styleable.K9Styles_composerBackgroundColor /* 50 */:
                DisplayMode $r311 = this.displayMode;
                DisplayMode $r411 = DisplayMode.MESSAGE_LIST;
                if ($r311 == $r411) {
                    MessageListFragment $r512 = this.messageListFragment;
                    $r512.onArchive();
                    return true;
                }
                MessageViewFragment $r219 = this.messageViewFragment;
                if ($r219 != null) {
                    MessageViewFragment $r220 = this.messageViewFragment;
                    $r220.onArchive();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_tintColorBulletPointPositive /* 53 */:
                DisplayMode $r312 = this.displayMode;
                DisplayMode $r412 = DisplayMode.MESSAGE_LIST;
                if ($r312 == $r412) {
                    MessageListFragment $r513 = this.messageListFragment;
                    $r513.onCopy();
                    return true;
                }
                MessageViewFragment $r221 = this.messageViewFragment;
                if ($r221 != null) {
                    MessageViewFragment $r222 = this.messageViewFragment;
                    $r222.onCopy();
                    return true;
                }
                return true;
            case R.styleable.K9Styles_tintColorBulletPointNeutral /* 54 */:
                DisplayMode $r313 = this.displayMode;
                DisplayMode $r413 = DisplayMode.MESSAGE_LIST;
                if ($r313 == $r413) {
                    MessageListFragment $r514 = this.messageListFragment;
                    $r514.onToggleRead();
                    return true;
                }
                MessageViewFragment $r223 = this.messageViewFragment;
                if ($r223 != null) {
                    MessageViewFragment $r224 = this.messageViewFragment;
                    $r224.onToggleRead();
                    return true;
                }
                return true;
        }
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void onForward(MessageReference messageReference) {
        onForward(messageReference, null);
    }

    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void onForward(MessageReference messageReference, Parcelable decryptionResultForReply) {
        MessageActions.actionForward(this, messageReference, decryptionResultForReply);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void onForwardAsAttachment(MessageReference messageReference) {
        onForwardAsAttachment(messageReference, null);
    }

    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void onForwardAsAttachment(MessageReference messageReference, Parcelable decryptionResultForReply) {
        MessageActions.actionForwardAsAttachment(this, messageReference, decryptionResultForReply);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent event) {
        boolean $z0 = K9.useVolumeKeysForListNavigationEnabled();
        if (!$z0 || (i != 24 && i != 25)) {
            boolean $z02 = super.onKeyUp(i, event);
            return $z02;
        }
        Object[] $r2 = new Object[0];
        Timber.v("Swallowed key up.", $r2);
        return true;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        boolean $z0 = isFinishing();
        if ($z0) {
            return;
        }
        setIntent(intent);
        int $i0 = this.firstBackStackId;
        if ($i0 >= 0) {
            FragmentManager $r2 = getFragmentManager();
            int $i02 = this.firstBackStackId;
            $r2.popBackStackImmediate($i02, 1);
            this.firstBackStackId = -1;
        }
        removeMessageListFragment();
        removeMessageViewFragment();
        this.messageReference = null;
        this.search = null;
        this.folderName = null;
        boolean $z02 = decodeExtras(intent);
        if ($z02) {
            initializeDisplayMode(null);
            initializeFragments();
            displayViews();
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem item) {
        int $i0 = item.getItemId();
        switch ($i0) {
            case 16908332:
                goBack();
                return true;
            case R.id.account_settings /* 2131558692 */:
                onEditAccount();
                return true;
            case R.id.search /* 2131558698 */:
                MessageListFragment $r2 = this.messageListFragment;
                $r2.onSearchRequested();
                return true;
            case R.id.check_mail /* 2131558699 */:
                MessageListFragment $r22 = this.messageListFragment;
                $r22.checkMail();
                return true;
            case R.id.compose /* 2131558700 */:
                MessageListFragment $r23 = this.messageListFragment;
                $r23.onCompose();
                return true;
            case R.id.app_settings /* 2131558719 */:
                onEditPrefs();
                return true;
            case R.id.delete /* 2131558738 */:
                MessageViewFragment $r4 = this.messageViewFragment;
                $r4.onDelete();
                return true;
            case R.id.archive /* 2131558741 */:
            case R.id.refile_archive /* 2131558763 */:
                MessageViewFragment $r42 = this.messageViewFragment;
                $r42.onArchive();
                return true;
            case R.id.move /* 2131558742 */:
            case R.id.refile_move /* 2131558765 */:
                MessageViewFragment $r43 = this.messageViewFragment;
                $r43.onMove();
                return true;
            case R.id.copy /* 2131558743 */:
            case R.id.refile_copy /* 2131558766 */:
                MessageViewFragment $r44 = this.messageViewFragment;
                $r44.onCopy();
                return true;
            case R.id.spam /* 2131558746 */:
            case R.id.refile_spam /* 2131558764 */:
                MessageViewFragment $r45 = this.messageViewFragment;
                $r45.onSpam();
                return true;
            case R.id.select_all /* 2131558747 */:
                MessageListFragment $r24 = this.messageListFragment;
                $r24.selectAll();
                return true;
            case R.id.reply_all /* 2131558750 */:
                MessageViewFragment $r46 = this.messageViewFragment;
                $r46.onReplyAll();
                return true;
            case R.id.reply /* 2131558751 */:
                MessageViewFragment $r47 = this.messageViewFragment;
                $r47.onReply();
                return true;
            case R.id.forward /* 2131558753 */:
                MessageViewFragment $r48 = this.messageViewFragment;
                $r48.onForward();
                return true;
            case R.id.forward_as_attachment /* 2131558754 */:
                MessageViewFragment $r49 = this.messageViewFragment;
                $r49.onForwardAsAttachment();
                return true;
            case R.id.previous_message /* 2131558757 */:
                showPreviousMessage();
                return true;
            case R.id.next_message /* 2131558758 */:
                showNextMessage();
                return true;
            case R.id.search_remote /* 2131558759 */:
                MessageListFragment $r25 = this.messageListFragment;
                $r25.onRemoteSearch();
                return true;
            case R.id.share /* 2131558761 */:
                MessageViewFragment $r410 = this.messageViewFragment;
                $r410.onSendAlternate();
                return true;
            case R.id.toggle_unread /* 2131558767 */:
                MessageViewFragment $r411 = this.messageViewFragment;
                $r411.onToggleRead();
                return true;
            case R.id.show_headers /* 2131558768 */:
            case R.id.hide_headers /* 2131558769 */:
                MessageViewFragment $r412 = this.messageViewFragment;
                $r412.onToggleAllHeadersView();
                updateMenu();
                return true;
            case R.id.set_sort_date /* 2131558771 */:
                MessageListFragment $r26 = this.messageListFragment;
                Account.SortType $r3 = Account.SortType.SORT_DATE;
                $r26.changeSort($r3);
                return true;
            case R.id.set_sort_arrival /* 2131558772 */:
                MessageListFragment $r27 = this.messageListFragment;
                Account.SortType $r32 = Account.SortType.SORT_ARRIVAL;
                $r27.changeSort($r32);
                return true;
            case R.id.set_sort_subject /* 2131558773 */:
                MessageListFragment $r28 = this.messageListFragment;
                Account.SortType $r33 = Account.SortType.SORT_SUBJECT;
                $r28.changeSort($r33);
                return true;
            case R.id.set_sort_sender /* 2131558774 */:
                MessageListFragment $r29 = this.messageListFragment;
                Account.SortType $r34 = Account.SortType.SORT_SENDER;
                $r29.changeSort($r34);
                return true;
            case R.id.set_sort_flag /* 2131558775 */:
                MessageListFragment $r210 = this.messageListFragment;
                Account.SortType $r35 = Account.SortType.SORT_FLAGGED;
                $r210.changeSort($r35);
                return true;
            case R.id.set_sort_unread /* 2131558776 */:
                MessageListFragment $r211 = this.messageListFragment;
                Account.SortType $r36 = Account.SortType.SORT_UNREAD;
                $r211.changeSort($r36);
                return true;
            case R.id.set_sort_attach /* 2131558777 */:
                MessageListFragment $r212 = this.messageListFragment;
                Account.SortType $r37 = Account.SortType.SORT_ATTACHMENT;
                $r212.changeSort($r37);
                return true;
            case R.id.mark_all_as_read /* 2131558778 */:
                MessageListFragment $r213 = this.messageListFragment;
                $r213.confirmMarkAllAsRead();
                return true;
            case R.id.select_text /* 2131558780 */:
                MessageViewFragment $r413 = this.messageViewFragment;
                $r413.onSelectText();
                return true;
            case R.id.toggle_message_view_theme /* 2131558781 */:
                onToggleTheme();
                return true;
            case R.id.show_folder_list /* 2131558782 */:
                onShowFolderList();
                return true;
            default:
                boolean $z0 = this.singleFolderMode;
                if ($z0) {
                    switch ($i0) {
                        case R.id.folder_settings /* 2131558709 */:
                            String $r5 = this.folderName;
                            if ($r5 != null) {
                                Account $r6 = this.account;
                                String $r52 = this.folderName;
                                FolderSettings.actionSettings(this, $r6, $r52);
                                return true;
                            }
                            return true;
                        case R.id.send_messages /* 2131558715 */:
                            MessageListFragment $r214 = this.messageListFragment;
                            $r214.onSendPendingMessages();
                            return true;
                        case R.id.expunge /* 2131558779 */:
                            MessageListFragment $r215 = this.messageListFragment;
                            $r215.onExpunge();
                            return true;
                        default:
                            boolean $z02 = super.onOptionsItemSelected(item);
                            return $z02;
                    }
                }
                return false;
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        Application $r2 = getApplication();
        StorageManager $r3 = StorageManager.getInstance($r2);
        StorageManager.StorageListener $r1 = this.mStorageListener;
        $r3.removeListener($r1);
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        configureMenu(menu);
        return true;
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void onReply(MessageReference messageReference) {
        onReply(messageReference, null);
    }

    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void onReply(MessageReference messageReference, Parcelable decryptionResultForReply) {
        MessageActions.actionReply(this, messageReference, false, decryptionResultForReply);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void onReplyAll(MessageReference messageReference) {
        onReplyAll(messageReference, null);
    }

    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void onReplyAll(MessageReference messageReference, Parcelable decryptionResultForReply) {
        MessageActions.actionReply(this, messageReference, true, decryptionResultForReply);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void onResendMessage(MessageReference messageReference) {
        MessageActions.actionEditDraft(this, messageReference);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        boolean $z0 = savedInstanceState.getBoolean("messageListWasDisplayed");
        this.messageListWasDisplayed = $z0;
        int $i0 = savedInstanceState.getInt("firstBackstackId");
        this.firstBackStackId = $i0;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        boolean $z0 = this instanceof Search;
        if (!$z0) {
            Search.setActive(false);
        }
        Account $r2 = this.account;
        if ($r2 != null) {
            Account $r22 = this.account;
            boolean $z02 = $r22.isAvailable(this);
            if (!$z02) {
                onAccountUnavailable();
                return;
            }
        }
        Application $r3 = getApplication();
        StorageManager $r4 = StorageManager.getInstance($r3);
        StorageManager.StorageListener $r1 = this.mStorageListener;
        $r4.addListener($r1);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        DisplayMode $r2 = this.displayMode;
        outState.putSerializable("displayMode", $r2);
        boolean $z0 = this.messageListWasDisplayed;
        outState.putBoolean("messageListWasDisplayed", $z0);
        int $i0 = this.firstBackStackId;
        outState.putInt("firstBackstackId", $i0);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        MessageListFragment $r1 = this.messageListFragment;
        boolean $z0 = $r1.onSearchRequested();
        return $z0;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.activity.misc.SwipeGestureDetector.OnSwipeGestureListener
    public void onSwipeLeftToRight(MotionEvent motionEvent, MotionEvent e2) {
        MessageListFragment $r4 = this.messageListFragment;
        if ($r4 != null) {
            DisplayMode $r5 = this.displayMode;
            DisplayMode $r3 = DisplayMode.MESSAGE_VIEW;
            if ($r5 != $r3) {
                MessageListFragment $r42 = this.messageListFragment;
                $r42.onSwipeLeftToRight(motionEvent, e2);
            }
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.activity.misc.SwipeGestureDetector.OnSwipeGestureListener
    public void onSwipeRightToLeft(MotionEvent motionEvent, MotionEvent e2) {
        MessageListFragment $r4 = this.messageListFragment;
        if ($r4 != null) {
            DisplayMode $r5 = this.displayMode;
            DisplayMode $r3 = DisplayMode.MESSAGE_VIEW;
            if ($r5 != $r3) {
                MessageListFragment $r42 = this.messageListFragment;
                $r42.onSwipeRightToLeft(motionEvent, e2);
            }
        }
    }

    @Override // com.fsck.k9.view.ViewSwitcher.OnSwitchCompleteListener
    public void onSwitchComplete(int displayedChild) {
        if (displayedChild == 0) {
            removeMessageViewFragment();
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void openMessage(MessageReference messageReference) {
        Context $r2 = getApplicationContext();
        Preferences $r3 = Preferences.getPreferences($r2);
        String $r4 = messageReference.getAccountUuid();
        Account $r5 = $r3.getAccount($r4);
        String $r42 = messageReference.getFolderName();
        String $r6 = $r5.getDraftsFolderName();
        boolean $z0 = $r42.equals($r6);
        if ($z0) {
            MessageActions.actionEditDraft(this, messageReference);
            return;
        }
        ViewGroup $r7 = this.messageViewContainer;
        View $r8 = this.messageViewPlaceHolder;
        $r7.removeView($r8);
        MessageListFragment $r9 = this.messageListFragment;
        if ($r9 != null) {
            MessageListFragment $r92 = this.messageListFragment;
            $r92.setActiveMessage(messageReference);
        }
        MessageViewFragment $r10 = MessageViewFragment.newInstance(messageReference);
        FragmentManager $r11 = getFragmentManager();
        FragmentTransaction $r12 = $r11.beginTransaction();
        $r12.replace(R.id.message_view_container, $r10);
        this.messageViewFragment = $r10;
        $r12.commit();
        DisplayMode $r13 = this.displayMode;
        DisplayMode $r14 = DisplayMode.SPLIT_VIEW;
        if ($r13 != $r14) {
            showMessageView();
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void remoteSearchStarted() {
        Menu $r1 = this.menu;
        configureMenu($r1);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    public void setActionBarSubTitle(String subTitle) {
        TextView $r2 = this.actionBarSubTitle;
        $r2.setText(subTitle);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    public void setActionBarTitle(String title) {
        TextView $r2 = this.actionBarTitle;
        $r2.setText(title);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    public void setActionBarUnread(int unread) {
        if (unread == 0) {
            TextView $r1 = this.actionBarUnread;
            $r1.setVisibility(8);
            return;
        }
        TextView $r12 = this.actionBarUnread;
        $r12.setVisibility(0);
        TextView $r13 = this.actionBarUnread;
        Integer $r3 = Integer.valueOf(unread);
        Object[] $r2 = {$r3};
        String $r4 = String.format("%d", $r2);
        $r13.setText($r4);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void setMessageListProgress(int progress) {
        setProgress(progress);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void setMessageListSubTitle(String subTitle) {
        setActionBarSubTitle(subTitle);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void setMessageListTitle(String title) {
        setActionBarTitle(title);
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void setUnreadCount(int unread) {
        setActionBarUnread(unread);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void showMoreFromSameSender(String senderAddress) {
        Object[] $r3 = {senderAddress};
        String $r4 = getString(R.string.search_from_format, $r3);
        LocalSearch r2 = new LocalSearch($r4);
        LocalSearch $r5 = this.search;
        String[] $r6 = $r5.getAccountUuids();
        r2.addAccountUuids($r6);
        SearchSpecification.SearchField $r7 = SearchSpecification.SearchField.SENDER;
        SearchSpecification.Attribute $r8 = SearchSpecification.Attribute.CONTAINS;
        r2.and($r7, senderAddress, $r8);
        MessageListFragment $r9 = MessageListFragment.newInstance(r2, false, false);
        addMessageListFragment($r9, true);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void showNextMessageOrReturn() {
        boolean $z0 = K9.messageViewReturnToList();
        if (!$z0) {
            boolean $z02 = showLogicalNextMessage();
            if ($z02) {
                return;
            }
        }
        DisplayMode $r2 = this.displayMode;
        DisplayMode $r1 = DisplayMode.SPLIT_VIEW;
        if ($r2 == $r1) {
            showMessageViewPlaceHolder();
        } else {
            showMessageList();
        }
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public void showThread(Account account, String str, long threadRootId) {
        showMessageViewPlaceHolder();
        LocalSearch r3 = new LocalSearch();
        String $r2 = account.getUuid();
        r3.addAccountUuid($r2);
        SearchSpecification.SearchField $r5 = SearchSpecification.SearchField.THREAD_ID;
        String $r22 = String.valueOf(threadRootId);
        SearchSpecification.Attribute $r4 = SearchSpecification.Attribute.EQUALS;
        r3.and($r5, $r22, $r4);
        MessageListFragment $r6 = MessageListFragment.newInstance(r3, true, false);
        addMessageListFragment($r6, true);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intentSender, int i, Intent intent, int i2, int i3, int extraFlags) throws IntentSender.SendIntentException {
        int $i3 = i | 32768;
        super.startIntentSenderForResult(intentSender, $i3, intent, i2, i3, extraFlags);
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
     */
    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener
    public boolean startSearch(Account account, String folderName) {
        if (account == null || folderName == null) {
            startSearch(null, false, null, false);
            return true;
        }
        Bundle r3 = new Bundle();
        String $r4 = account.getUuid();
        r3.putString("com.fsck.k9.search_account", $r4);
        r3.putString("com.fsck.k9.search_folder", folderName);
        startSearch(null, false, r3, false);
        return true;
    }

    @Override // com.fsck.k9.fragment.MessageListFragment.MessageListFragmentListener, com.fsck.k9.ui.messageview.MessageViewFragment.MessageViewFragmentListener
    public void updateMenu() {
        invalidateOptionsMenu();
    }
}