.class Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;
.super Ljava/lang/Object;
.source "DummyAccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/DummyAccountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Toaster"
.end annotation


# static fields
.field private static final TOAST_MESSAGE:Ljava/lang/String; = "toast_message"


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/service/DummyAccountService;


# direct methods
.method private constructor <init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService;Landroid/content/Context;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-object/16 v3, p2

    .line 53
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->this$0:Lorg/sufficientlysecure/keychain/service/DummyAccountService;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v2, Landroid/os/Handler;

    new-instance v0, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster$1;-><init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;)V

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, v1, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->handler:Landroid/os/Handler;

    .line 54
    iput-object v3, v1, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->context:Landroid/content/Context;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;---><init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService;Landroid/content/Context;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method synthetic constructor <init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService;Landroid/content/Context;Lorg/sufficientlysecure/keychain/service/DummyAccountService$1;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;-><init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;)Landroid/content/Context;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->context:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public toast(I)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    .line 58
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->toast(Ljava/lang/String;)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;--->toast(I)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public toast(Ljava/lang/String;)V
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    .line 62
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "toast_message"

    .line 64
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 66
    iget-object v4, v3, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->handler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    const-string v5, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;--->toast(Ljava/lang/String;)V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
