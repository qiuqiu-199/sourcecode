.class Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EncryptRecipientDropdownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;

.field private final vCreationDate:Landroid/widget/TextView;

.field private final vMainUserId:Landroid/widget/TextView;

.field private final vMainUserIdRest:Landroid/widget/TextView;

.field private final vStatusIcon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 39
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;

    .line 40
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 42
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0901b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vMainUserId:Landroid/widget/TextView;

    .line 43
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0901ae

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vMainUserIdRest:Landroid/widget/TextView;

    .line 44
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0901b1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vStatusIcon:Landroid/widget/ImageView;

    .line 45
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0901ac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vCreationDate:Landroid/widget/TextView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public bind(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 49
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v0

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;->keyInfo:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-virtual {v0, v3}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->setKeyInfo(Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V

    .line 51
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vMainUserId:Landroid/widget/TextView;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vMainUserIdRest:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatUserId(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 52
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vCreationDate:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatCreationDate(Landroid/widget/TextView;)V

    .line 53
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;

    invoke-static {v3}, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;->access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter;)Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;

    move-result-object v3

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;->vStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/util/KeyInfoFormatter;->formatStatusIcon(Landroid/widget/ImageView;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientDropdownAdapter$ItemViewHolder;--->bind(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipsInput$EncryptRecipientChip;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
