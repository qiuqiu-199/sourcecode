.class final synthetic Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;

.field private final arg$2:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;->arg$1:Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;->arg$2:Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;

    invoke-static {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder;->lambda$bind$0$TransferSecretKeyList$TransferKeyViewHolder(Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$OnClickTransferKeyListener;Lorg/sufficientlysecure/keychain/model/SubKey$UnifiedKeyInfo;Landroid/view/View;)V

    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/TransferSecretKeyList$TransferKeyViewHolder$$Lambda$0;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
