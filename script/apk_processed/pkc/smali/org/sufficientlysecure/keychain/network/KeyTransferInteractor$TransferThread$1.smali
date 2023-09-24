.class Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;
.super Ljava/lang/Object;
.source "KeyTransferInteractor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->invokeListener(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

.field final synthetic val$arg:Ljava/lang/String;

.field final synthetic val$method:I


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;ILjava/lang/String;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    move-object/16 p0, p3

    .line 302
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    iput v2, v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$method:I

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$arg:Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;---><init>(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;ILjava/lang/String;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object/16 v2, p0

    .line 305
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$method:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 325
    :pswitch_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onConnectionError(Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onConnectionErrorConnect()V

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$500(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onConnectionErrorNoRouteToHost(Ljava/lang/String;)V

    goto :goto_0

    .line 322
    :pswitch_3
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onConnectionLost()V

    goto :goto_0

    .line 316
    :pswitch_4
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onDataReceivedOk(Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :pswitch_5
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onDataSentOk(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :pswitch_6
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onConnectionEstablished(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :pswitch_7
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->val$arg:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onServerStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :pswitch_8
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;->this$0:Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;->access$400(Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread;)Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;

    move-result-object v0

    invoke-interface {v0}, Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$KeyTransferCallback;->onConnectionErrorListen()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/network/KeyTransferInteractor$TransferThread$1;--->run()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
