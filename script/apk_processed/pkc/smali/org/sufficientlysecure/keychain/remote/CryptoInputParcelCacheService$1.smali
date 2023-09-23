.class final Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;
.super Landroid/os/Handler;
.source "CryptoInputParcelCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService;->getCryptoInputParcel(Landroid/content/Context;Ljava/util/UUID;)Lorg/sufficientlysecure/keychain/service/input/CryptoInputParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mutex:Ljava/lang/Object;

.field final synthetic val$returnMessage:Landroid/os/Message;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/os/Message;Ljava/lang/Object;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move-object/16 p0, p3

    .line 120
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;->val$returnMessage:Landroid/os/Message;

    iput-object p0, v0, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;->val$mutex:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;---><init>(Landroid/os/Looper;Landroid/os/Message;Ljava/lang/Object;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 124
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;->val$returnMessage:Landroid/os/Message;

    iget v1, v3, Landroid/os/Message;->what:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 125
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;->val$returnMessage:Landroid/os/Message;

    invoke-virtual {v0, v3}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 126
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;->val$mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 127
    :try_start_0
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;->val$mutex:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 128
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    return-void

    :catchall_0
    move-exception v0

    .line 128
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/CryptoInputParcelCacheService$1;--->handleMessage(Landroid/os/Message;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
