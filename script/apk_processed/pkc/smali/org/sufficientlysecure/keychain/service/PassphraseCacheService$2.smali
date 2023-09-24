.class Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;
.super Landroid/content/BroadcastReceiver;
.source "PassphraseCacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 300
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;->this$0:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-direct {v0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;---><init>(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    .line 303
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v0, "PassphraseCacheService: Received broadcast..."

    const/4 v1, 0x0

    .line 305
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "org.sufficientlysecure.keychain.action.PASSPHRASE_CACHE_BROADCAST"

    .line 307
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_id"

    const-wide/16 v1, -0x1

    .line 308
    invoke-virtual {v5, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 309
    iget-object v5, v3, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;->this$0:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-static {v5, v0, v1}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->access$100(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;J)V

    :cond_0
    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 312
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 313
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;->this$0:Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;

    invoke-static {v4}, Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;->access$200(Lorg/sufficientlysecure/keychain/service/PassphraseCacheService;)V

    :cond_1
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/PassphraseCacheService$2;--->onReceive(Landroid/content/Context;Landroid/content/Intent;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
