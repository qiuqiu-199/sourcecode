.class public Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;
.super Landroid/support/v4/app/Fragment;
.source "SettingsKeyserverFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;
    }
.end annotation


# static fields
.field private static final ARG_KEYSERVER_ARRAY:Ljava/lang/String; = "arg_keyserver_array"


# instance fields
.field private keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

.field private mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mKeyservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyserversMutable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object/16 v0, p0

    .line 57
    invoke-direct {v0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;---><init>()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->deleteKeyserver(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->addKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V

    return-void
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->editKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V

    return-void
.end method

.method static synthetic access$400(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;)Landroid/support/v7/widget/helper/ItemTouchHelper;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    return-object p0
.end method

.method static synthetic access$500(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->saveKeyserverList()V

    return-void
.end method

.method private addKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 198
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->notifyItemInserted(I)V

    .line 200
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->saveKeyserverList()V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->addKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private deleteKeyserver(I)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 210
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 211
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v0, 0x7f110877

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;->ERROR:Lorg/sufficientlysecure/keychain/ui/util/Notify$Style;

    invoke-static {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/Notify;->create(Landroid/app/Activity;ILorg/sufficientlysecure/keychain/ui/util/Notify$Style;)Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;

    move-result-object v3

    .line 212
    invoke-interface {v3}, Lorg/sufficientlysecure/keychain/ui/util/Notify$Showable;->show()V

    return-void

    .line 215
    :cond_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 217
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->notifyItemRemoved(I)V

    if-nez v3, :cond_1

    .line 218
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 220
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->notifyItemChanged(I)V

    .line 222
    :cond_1
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->saveKeyserverList()V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->deleteKeyserver(I)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private editKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 204
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    invoke-virtual {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->notifyItemChanged(I)V

    .line 206
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->saveKeyserverList()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->editKeyserver(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;)",
            "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;"
        }
    .end annotation

    move-object/16 v2, p0

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "arg_keyserver_array"

    .line 70
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 72
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;-><init>()V

    .line 73
    invoke-virtual {v2, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->newInstance(Ljava/util/ArrayList;)Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private saveKeyserverList()V
    .locals 5

    move-object/16 v2, p0

    .line 226
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyservers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/util/Preferences;->getPreferences(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/util/Preferences;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/keychain/util/Preferences;->setKeyServers(Ljava/util/ArrayList;)V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyservers:Ljava/util/List;

    .line 233
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->resetAllLastUpdatedTimes()V

    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->saveKeyserverList()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startAddKeyserverDialog()V
    .locals 6

    move-object/16 v3, p0

    .line 137
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->ADD:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v3, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->startEditKeyserverDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->startAddKeyserverDialog()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private startEditKeyserverDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move/16 p0, p3

    .line 142
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;

    invoke-direct {v0, v2, p0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;I)V

    .line 191
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 193
    invoke-static {v1, v3, v4, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->newInstance(Landroid/os/Messenger;Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;

    move-result-object v3

    .line 194
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string p0, "addKeyserverDialog"

    invoke-virtual {v3, v4, p0}, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->startEditKeyserverDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    const v0, 0x7f0d0012

    .line 117
    invoke-virtual {v3, v0, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 119
    invoke-super {v1, v2, v3}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 81
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;->create(Landroid/content/Context;)Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    move-result-object v2

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->keyMetadataDao:Lorg/sufficientlysecure/keychain/daos/KeyMetadataDao;

    const v2, 0x7f0c00ea

    const/4 p0, 0x0

    .line 83
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move/16 v3, p2

    .line 238
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;->EDIT:Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    .line 238
    invoke-direct {v1, v2, v0, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->startEditKeyserverDialog(Lorg/sufficientlysecure/keychain/ui/dialog/AddEditKeyserverDialogFragment$DialogAction;Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->onItemClick(Landroid/view/View;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 124
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f09021f

    if-eq v0, v1, :cond_0

    .line 131
    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 127
    :cond_0
    invoke-direct {v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->startAddKeyserverDialog()V

    const/4 v3, 0x1

    return v3

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->onOptionsItemSelected(Landroid/view/MenuItem;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 88
    invoke-super {v1, v2, v3}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;--->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "arg_keyserver_array"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyservers:Ljava/util/List;

    .line 93
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mKeyserversMutable:Ljava/util/ArrayList;

    invoke-direct {v3, v1, v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;Ljava/util/ArrayList;)V

    iput-object v3, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    const v3, 0x7f0901b9

    .line 95
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 97
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 98
    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mAdapter:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;

    invoke-direct {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperDragCallback;-><init>(Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;)V

    .line 102
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v0, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 103
    iget-object v3, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 106
    new-instance v3, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/util/recyclerview/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    const/4 v2, 0x1

    .line 112
    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->setHasOptionsMenu(Z)V

    return-void
.end method
