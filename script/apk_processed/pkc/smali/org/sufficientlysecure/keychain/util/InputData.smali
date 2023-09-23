.class public Lorg/sufficientlysecure/keychain/util/InputData;
.super Ljava/lang/Object;
.source "InputData.java"


# static fields
.field public static final UNKNOWN_FILESIZE:I = -0x1


# instance fields
.field private mInputStream:Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

.field mOriginalFilename:Ljava/lang/String;

.field private mSize:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-wide/16 v3, p2

    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mInputStream:Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

    .line 40
    iput-wide v3, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mSize:J

    const-string v2, ""

    .line 41
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mOriginalFilename:Ljava/lang/String;

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/util/InputData;---><init>(Ljava/io/InputStream;J)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    move-wide/16 v3, p2

    move-object/16 p1, p4

    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

    invoke-direct {v0, v2}, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mInputStream:Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

    .line 34
    iput-wide v3, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mSize:J

    .line 35
    iput-object p1, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mOriginalFilename:Ljava/lang/String;

    return-void

    const-string p2, "M_InsDal"

    const-string p3, "Lorg/sufficientlysecure/keychain/util/InputData;---><init>(Ljava/io/InputStream;JLjava/lang/String;)V"

    invoke-static/range {p2 .. p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 4

    move-object/16 v1, p0

    .line 45
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mInputStream:Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/InputData;--->getInputStream()Ljava/io/InputStream;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getOriginalFilename()Ljava/lang/String;
    .locals 4

    move-object/16 v1, p0

    .line 49
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/util/InputData;->mOriginalFilename:Ljava/lang/String;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/util/InputData;--->getOriginalFilename()Ljava/lang/String;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getSize()J
    .locals 5

    move-object/16 v2, p0

    .line 53
    iget-wide v0, v2, Lorg/sufficientlysecure/keychain/util/InputData;->mSize:J

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/InputData;--->getSize()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getStreamPosition()J
    .locals 5

    move-object/16 v2, p0

    .line 57
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/util/InputData;->mInputStream:Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/util/PositionAwareInputStream;->position()J

    move-result-wide v0

    return-wide v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/util/InputData;--->getStreamPosition()J"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
