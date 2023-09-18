package com.fsck.k9.activity;

import com.fsck.k9.mailstore.LocalMessage;
import java.util.Date;

/* loaded from: classes.dex */
public class MessageInfoHolder {
    public String account;
    public boolean answered;
    public Date compareArrival;
    public String compareCounterparty;
    public Date compareDate;
    public boolean flagged;
    public FolderInfoHolder folder;
    public boolean forwarded;
    public LocalMessage message;
    public boolean read;
    public boolean selected = false;
    public CharSequence sender;
    public String senderAddress;
    public String uid;
    public String uri;

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.attachDebugInfo(DebugInfoAttachVisitor.java:94)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.processDebugInfo(DebugInfoAttachVisitor.java:51)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:41)
     */
    public boolean equals(Object o) {
        boolean $z0 = o instanceof MessageInfoHolder;
        if ($z0) {
            MessageInfoHolder r3 = (MessageInfoHolder) o;
            LocalMessage $r4 = this.message;
            LocalMessage $r2 = r3.message;
            boolean $z02 = $r4.equals($r2);
            return $z02;
        }
        return false;
    }

    /* JADX WARN: Can't parse signature for local variable: 
    java.lang.NullPointerException
    	at jadx.core.dex.nodes.utils.TypeUtils.expandTypeVariables(TypeUtils.java:72)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.getVarType(DebugInfoAttachVisitor.java:146)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.attachDebugInfo(DebugInfoAttachVisitor.java:94)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.processDebugInfo(DebugInfoAttachVisitor.java:51)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:41)
     */
    public int hashCode() {
        String $r1 = this.uid;
        int $i0 = $r1.hashCode();
        return $i0;
    }
}