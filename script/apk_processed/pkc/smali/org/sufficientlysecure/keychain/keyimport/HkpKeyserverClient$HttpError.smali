.class Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;
.super Ljava/lang/Exception;
.source "HkpKeyserverClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HttpError"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17da58ac63ee089dL


# instance fields
.field private code:I

.field private data:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 448
    iput v3, v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->code:I

    .line 449
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->data:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;---><init>(ILjava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;)I
    .locals 0

    .line 441
    iget p0, p0, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->code:I

    return p0
.end method


# virtual methods
.method public getCode()I
    .locals 4

    move-object/16 v1, p0

    .line 453
    iget v0, v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->code:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;--->getCode()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getData()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 457
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;->data:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/keyimport/HkpKeyserverClient$HttpError;--->getData()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
