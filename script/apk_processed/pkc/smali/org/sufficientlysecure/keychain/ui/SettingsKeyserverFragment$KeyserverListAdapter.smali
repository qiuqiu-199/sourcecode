.class public Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SettingsKeyserverFragment.java"

# interfaces
.implements Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyserverListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;",
        ">;",
        "Lorg/sufficientlysecure/keychain/ui/util/recyclerview/ItemTouchHelperAdapter;"
    }
.end annotation


# instance fields
.field private final mKeyservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;


# direct methods
.method public constructor <init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 247
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 248
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->mKeyservers:Ljava/util/ArrayList;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;---><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;Ljava/util/ArrayList;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private selectUnselectKeyserver(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    if-nez v2, :cond_0

    .line 279
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->showAsSelectedKeyserver()V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->showAsUnselectedKeyserver()V

    :goto_0
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;--->selectUnselectKeyserver(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 300
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->mKeyservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 242
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 260
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->keyserverUrl:Landroid/widget/TextView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->mKeyservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;

    invoke-virtual {v1}, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverAddress;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->dragHandleView:Landroid/widget/ImageView;

    new-instance v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$1;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 273
    invoke-direct {v2, v3, v4}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->selectUnselectKeyserver(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 242
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 253
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v0, 0x7f0c00eb

    const/4 v1, 0x0

    .line 254
    invoke-virtual {v4, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 255
    new-instance v4, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;-><init>(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;Landroid/view/View;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onItemMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    move/16 p0, p3

    move/16 p1, p4

    .line 288
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->mKeyservers:Ljava/util/ArrayList;

    invoke-static {v0, p0, p1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 289
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->this$0:Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment;)V

    .line 290
    check-cast v3, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;

    invoke-direct {v1, v3, p0}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->selectUnselectKeyserver(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;I)V

    .line 293
    check-cast v2, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;

    if-nez p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v3}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;->access$602(Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter$ViewHolder;Z)Z

    .line 295
    invoke-virtual {v1, p0, p1}, Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;->notifyItemMoved(II)V

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/ui/SettingsKeyserverFragment$KeyserverListAdapter;--->onItemMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
