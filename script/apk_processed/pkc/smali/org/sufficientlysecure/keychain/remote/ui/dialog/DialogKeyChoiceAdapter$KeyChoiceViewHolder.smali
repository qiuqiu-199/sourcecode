.class Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DialogKeyChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyChoiceViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

.field private final vCreation:Landroid/widget/TextView;

.field private final vIcon:Landroid/widget/ImageView;

.field private final vName:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;Landroid/view/View;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 82
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    .line 83
    invoke-direct {v1, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 79
    iget-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0901ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vCreation:Landroid/widget/TextView;

    const v2, 0x7f0901b0

    .line 85
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vName:Landroid/widget/TextView;

    const v2, 0x7f0901af

    .line 86
    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vIcon:Landroid/widget/ImageView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;---><init>(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    .line 90
    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vCreation:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    .line 94
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->email()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v6}, Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;->name()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f110d3d

    if-eqz v1, :cond_0

    .line 97
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    .line 99
    iget-object v1, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vName:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v6, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vName:Landroid/widget/TextView;

    const v1, 0x7f110d3e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :goto_0
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->this$0:Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;

    invoke-static {v6}, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;->access$000(Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v6

    iget-object v0, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vCreation:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatCreationDate(Landroid/widget/TextView;)V

    .line 106
    iget-object v6, v5, Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;->vIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/remote/ui/dialog/DialogKeyChoiceAdapter$KeyChoiceViewHolder;--->bind(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Landroid/graphics/drawable/Drawable;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
