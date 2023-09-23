.class public Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;
.super Landroid/support/v4/app/Fragment;
.source "ImportKeysSearchFragment.java"


# static fields
.field public static final ARG_CLOUD_SEARCH_PREFS:Ljava/lang/String; = "cloud_search_prefs"

.field public static final ARG_QUERY:Ljava/lang/String; = "query"

.field private static final CURSOR_SUGGESTION:Ljava/lang/String; = "suggestion"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

.field private mCurrentSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNamesAndEmails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 57
    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mCurrentSuggestions:Ljava/util/List;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)Ljava/util/List;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mCurrentSuggestions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->search(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->updateAdapter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)Landroid/app/Activity;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 82
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;

    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;-><init>()V

    .line 84
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "query"

    .line 85
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cloud_search_prefs"

    .line 86
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->newInstance(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private search(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 214
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "cloud_search_prefs"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    if-nez v0, :cond_0

    .line 218
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getCloudSearchPrefs()Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;

    move-result-object v0

    .line 221
    :cond_0
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mCallback:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    new-instance v2, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;

    invoke-direct {v2, v4, v0}, Lorg/sufficientlysecure/keychain/keyimport/processing/CloudLoaderState;-><init>(Ljava/lang/String;Lorg/sufficientlysecure/keychain/util/Preferences$CloudSearchPrefs;)V

    invoke-interface {v1, v2}, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;->loadKeys(Lorg/sufficientlysecure/keychain/keyimport/processing/LoaderState;)V

    const/4 v4, 0x0

    .line 222
    invoke-direct {v3, v4}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->toggleKeyboard(Z)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->search(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private toggleKeyboard(Z)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 226
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 229
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    .line 230
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 233
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 239
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->toggleKeyboard(Z)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private updateAdapter(Ljava/lang/String;)V
    .locals 11

    move-object/16 v8, p0

    move-object/16 v9, p1

    .line 184
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mCurrentSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "suggestion"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 186
    :goto_0
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mNamesAndEmails:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 187
    iget-object v3, v8, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mNamesAndEmails:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 188
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    iget-object v6, v8, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mCurrentSuggestions:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object v3, v6, v5

    invoke-virtual {v0, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_1
    iget-object v9, v8, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mSearchAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v9, v0}, Landroid/support/v4/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    return-void

    const-string v10, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->updateAdapter(Ljava/lang/String;)V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 111
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->onAttach(Landroid/content/Context;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :try_start_0
    move-object v0, v3

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mCallback:Lorg/sufficientlysecure/keychain/keyimport/processing/ImportKeysListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    check-cast v3, Landroid/app/Activity;

    iput-object v3, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mActivity:Landroid/app/Activity;

    return-void

    .line 116
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must implement ImportKeysListener"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    const v0, 0x7f0d000c

    .line 125
    invoke-virtual {v5, v0, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const v0, 0x7f090228

    .line 127
    invoke-interface {v4, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SearchView;

    .line 129
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mSearchAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V

    .line 131
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;

    invoke-direct {v2, v3, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V

    .line 145
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;

    invoke-direct {v2, v3, v1}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 160
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;

    invoke-direct {v2, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;)V

    invoke-static {v0, v2}, Landroid/support/v4/view/MenuItemCompat;->setOnActionExpandListener(Landroid/view/MenuItem;Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 173
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 175
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "query"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 177
    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 180
    :cond_0
    invoke-super {v3, v4, v5}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    move-object/16 v9, p2

    move-object/16 p0, p3

    .line 95
    new-instance v8, Lorg/sufficientlysecure/keychain/util/ContactHelper;

    iget-object v9, v7, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Lorg/sufficientlysecure/keychain/util/ContactHelper;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getContactNames()Ljava/util/List;

    move-result-object v9

    iput-object v9, v7, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mNamesAndEmails:Ljava/util/List;

    .line 97
    iget-object v9, v7, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mNamesAndEmails:Ljava/util/List;

    invoke-virtual {v8}, Lorg/sufficientlysecure/keychain/util/ContactHelper;->getContactMails()Ljava/util/List;

    move-result-object v8

    invoke-interface {v9, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    new-instance v8, Landroid/support/v4/widget/SimpleCursorAdapter;

    iget-object v1, v7, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mActivity:Landroid/app/Activity;

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const-string p0, "suggestion"

    const/4 v0, 0x0

    aput-object p0, v4, v0

    new-array v5, v9, [I

    const p0, 0x1020014

    aput p0, v5, v0

    const v2, 0x7f0c0084

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v8, v7, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mSearchAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;

    .line 103
    invoke-virtual {v7, v9}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->setHasOptionsMenu(Z)V

    const/4 v8, 0x0

    return-object v8

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 199
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090229

    if-eq v0, v1, :cond_0

    .line 209
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 202
    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, ":android:show_fragment"

    .line 203
    const-class v1, Lorg/sufficientlysecure/keychain/ui/SettingsActivity$CloudSearchPrefsFragment;

    .line 204
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ImportKeysSearchFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
