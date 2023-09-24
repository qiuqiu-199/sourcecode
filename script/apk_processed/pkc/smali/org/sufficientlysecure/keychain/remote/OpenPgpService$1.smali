.class Lorg/sufficientlysecure/keychain/remote/OpenPgpService$1;
.super Lorg/openintents/openpgp/IOpenPgpService$Stub;
.source "OpenPgpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/OpenPgpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpService;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 969
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService;

    invoke-direct {v0}, Lorg/openintents/openpgp/IOpenPgpService$Stub;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService$1;---><init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpService;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public execute(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/content/Intent;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    move-object/16 p0, p3

    const-string v0, "You are using a deprecated service which may lead to truncated data on return, please use IOpenPgpService2!"

    const/4 v1, 0x0

    .line 972
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 974
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/remote/OpenPgpService$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService;

    invoke-virtual {v0, v3, v4, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService;->executeInternal(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/content/Intent;

    move-result-object v3

    return-object v3

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService$1;--->execute(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/content/Intent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
