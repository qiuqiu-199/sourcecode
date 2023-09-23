.class Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService$1;
.super Lorg/openintents/ssh/authentication/ISshAuthenticationService$Stub;
.source "SshAuthenticationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 83
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService$1;->this$0:Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;

    invoke-direct {v0}, Lorg/openintents/ssh/authentication/ISshAuthenticationService$Stub;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService$1;---><init>(Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 86
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService$1;->this$0:Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;

    invoke-static {v0, v2}, Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;->access$000(Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/SshAuthenticationService$1;--->execute(Landroid/content/Intent;)Landroid/content/Intent;"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
