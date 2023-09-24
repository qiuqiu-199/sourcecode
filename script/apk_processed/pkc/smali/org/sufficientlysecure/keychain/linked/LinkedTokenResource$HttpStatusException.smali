.class public Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;
.super Ljava/lang/Throwable;
.source "LinkedTokenResource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpStatusException"
.end annotation


# instance fields
.field private final mReason:Ljava/lang/String;

.field private final mStatusCode:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    move-object/16 v4, p2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 288
    iput v3, v2, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->mStatusCode:I

    .line 289
    iput-object v4, v2, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->mReason:Ljava/lang/String;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;---><init>(ILjava/lang/String;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 297
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->mReason:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;--->getReason()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getStatus()I
    .locals 4

    move-object/16 v1, p0

    .line 293
    iget v0, v1, Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;->mStatusCode:I

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/linked/LinkedTokenResource$HttpStatusException;--->getStatus()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
