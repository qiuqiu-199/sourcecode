.class Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;
.super Ljava/lang/Object;
.source "ReceivedSecretKeyList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;->bind(Landroid/content/Context;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Ljava/lang/Long;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;

.field final synthetic val$item:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;

.field final synthetic val$onClickReceiveKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 183
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;->this$0:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;

    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;->val$onClickReceiveKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;->val$item:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;---><init>(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 186
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;->val$onClickReceiveKeyListener:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;

    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;->val$item:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$000(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)J

    move-result-wide v0

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;->val$item:Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;->access$500(Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyItem;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$OnClickImportKeyListener;->onUiClickImportKey(JLjava/lang/String;)V

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/transfer/view/ReceivedSecretKeyList$ReceivedKeyViewHolder$1;--->onClick(Landroid/view/View;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
