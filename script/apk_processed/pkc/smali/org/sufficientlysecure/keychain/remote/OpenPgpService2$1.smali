.class Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;
.super Lorg/openintents/openpgp/IOpenPgpService2$Stub;
.source "OpenPgpService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 41
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;

    invoke-direct {v0}, Lorg/openintents/openpgp/IOpenPgpService2$Stub;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;---><init>(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public createOutputPipe(I)Landroid/os/ParcelFileDescriptor;
    .locals 8

    move-object/16 v5, p0

    move/16 v6, p1

    const/4 v0, 0x0

    .line 46
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 47
    iget-object v2, v5, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->access$100(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v5, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;

    invoke-static {v3, v6}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->access$000(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-interface {v2, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    aget-object v6, v1, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v6

    const-string v1, "IOException in OpenPgpService2"

    .line 50
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    return-object v6

    const-string v7, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;--->createOutputPipe(I)Landroid/os/ParcelFileDescriptor;"

    invoke-static/range {v7 .. v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public execute(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;
    .locals 6

    move-object/16 v3, p0

    move-object/16 v4, p1

    move-object/16 v5, p2

    move/16 p0, p3

    .line 58
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;

    invoke-static {v0, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->access$000(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;I)J

    move-result-wide v0

    .line 59
    iget-object p0, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;

    invoke-static {p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->access$100(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    .line 60
    iget-object v2, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->access$100(Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;->this$0:Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;

    invoke-virtual {v0, v4, v5, p0}, Lorg/sufficientlysecure/keychain/remote/OpenPgpService2;->executeInternal(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/content/Intent;

    move-result-object v4

    return-object v4

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/remote/OpenPgpService2$1;--->execute(Landroid/content/Intent;Landroid/os/ParcelFileDescriptor;I)Landroid/content/Intent;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
