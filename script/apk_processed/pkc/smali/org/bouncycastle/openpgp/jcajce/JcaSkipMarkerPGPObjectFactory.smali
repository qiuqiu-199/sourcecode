.class public Lorg/bouncycastle/openpgp/jcajce/JcaSkipMarkerPGPObjectFactory;
.super Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;
.source "JcaSkipMarkerPGPObjectFactory.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public nextObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    .line 33
    :goto_0
    instance-of v1, v0, Lorg/bouncycastle/openpgp/PGPMarker;

    if-eqz v1, :cond_0

    .line 34
    invoke-super {p0}, Lorg/bouncycastle/openpgp/jcajce/JcaPGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method
