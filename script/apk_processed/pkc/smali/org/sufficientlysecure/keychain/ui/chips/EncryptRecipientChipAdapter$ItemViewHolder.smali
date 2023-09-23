.class Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "EncryptRecipientChipAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemViewHolder"
.end annotation


# instance fields
.field private final chipView:Lorg/sufficientlysecure/materialchips/ChipView;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;Landroid/view/View;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 60
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;->this$0:Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;

    .line 61
    invoke-direct {v0, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 62
    check-cast v2, Lorg/sufficientlysecure/materialchips/ChipView;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;->chipView:Lorg/sufficientlysecure/materialchips/ChipView;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;---><init>(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter;Landroid/view/View;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;)Lorg/sufficientlysecure/materialchips/ChipView;
    .locals 0

    .line 57
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/chips/EncryptRecipientChipAdapter$ItemViewHolder;->chipView:Lorg/sufficientlysecure/materialchips/ChipView;

    return-object p0
.end method
