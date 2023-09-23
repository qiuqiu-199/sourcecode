.class public Lcom/drew/metadata/exif/makernotes/AppleMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "AppleMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/AppleMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    .line 50
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/AppleMakernoteDescriptor;->getHdrImageTypeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHdrImageTypeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "HDR Image"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Original Image"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/AppleMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
