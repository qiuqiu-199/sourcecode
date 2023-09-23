.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DialogKeyChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private activeItem:Ljava/lang/Integer;

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private iconSelected:Landroid/graphics/drawable/Drawable;

.field private iconUnselected:Landroid/graphics/drawable/Drawable;

.field private keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

.field private final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 31
    invoke-direct {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 33
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    invoke-direct {v2, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;---><init>(Landroid/content/Context;Landroid/view/LayoutInflater;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->keyInfoFormatter:Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 62
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->onBindViewHolder(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;I)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move/16 v7, p2

    .line 50
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->data:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    .line 51
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->activeItem:Ljava/lang/Integer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 52
    iget-object v4, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->activeItem:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v7, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    .line 54
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->iconSelected:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v7, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->iconUnselected:Landroid/graphics/drawable/Drawable;

    .line 55
    :goto_2
    invoke-virtual {v6, v0, v7}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v6, v6, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x4

    :cond_4
    :goto_3
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;--->onBindViewHolder(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move/16 v4, p2

    .line 39
    iget-object v4, v2, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c002b

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 40
    new-instance v4, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;

    invoke-direct {v4, v2, v3}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;-><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;Landroid/view/View;)V

    return-object v4

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;--->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setActiveItem(Ljava/lang/Integer;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 44
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->activeItem:Ljava/lang/Integer;

    .line 45
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;--->setActiveItem(Ljava/lang/Integer;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;",
            ">;)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 66
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->data:Ljava/util/List;

    .line 67
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->notifyDataSetChanged()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;--->setData(Ljava/util/List;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method setSelectionDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 71
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->iconSelected:Landroid/graphics/drawable/Drawable;

    .line 72
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->iconUnselected:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->notifyDataSetChanged()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;--->setSelectionDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
