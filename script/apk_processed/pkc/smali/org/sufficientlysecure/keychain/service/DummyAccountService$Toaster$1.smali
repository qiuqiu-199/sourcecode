.class Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster$1;
.super Ljava/lang/Object;
.source "DummyAccountService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 45
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster$1;->this$1:Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster$1;---><init>(Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 48
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster$1;->this$1:Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;->access$000(Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "toast_message"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return v1

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/service/DummyAccountService$Toaster$1;--->handleMessage(Landroid/os/Message;)Z"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
