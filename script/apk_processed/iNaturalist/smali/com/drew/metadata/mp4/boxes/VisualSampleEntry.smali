.class public Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;
.super Lcom/drew/metadata/mp4/boxes/SampleEntry;
.source "VisualSampleEntry.java"


# instance fields
.field compressorname:Ljava/lang/String;

.field depth:I

.field frameCount:I

.field height:I

.field horizresolution:J

.field revisionLevel:I

.field spatialQuality:I

.field temporalQuality:I

.field vendor:Ljava/lang/String;

.field version:I

.field vertresolution:J

.field width:I


# direct methods
.method public constructor <init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/drew/metadata/mp4/boxes/SampleEntry;-><init>(Lcom/drew/lang/SequentialReader;Lcom/drew/metadata/mp4/boxes/Box;)V

    .line 50
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->version:I

    .line 51
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt16()S

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->revisionLevel:I

    const/4 p2, 0x4

    .line 52
    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->vendor:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->temporalQuality:I

    .line 54
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getInt32()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->spatialQuality:I

    .line 55
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->width:I

    .line 56
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->height:I

    .line 57
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->horizresolution:J

    .line 58
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt32()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->vertresolution:J

    const-wide/16 v0, 0x4

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    .line 60
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->frameCount:I

    const/16 p2, 0x20

    .line 61
    invoke-virtual {p1, p2}, Lcom/drew/lang/SequentialReader;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->compressorname:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/drew/lang/SequentialReader;->getUInt16()I

    move-result p2

    iput p2, p0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->depth:I

    const-wide/16 v0, 0x2

    .line 63
    invoke-virtual {p1, v0, v1}, Lcom/drew/lang/SequentialReader;->skip(J)V

    return-void
.end method


# virtual methods
.method public addMetadata(Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 68
    iget v2, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->width:I

    const/16 v3, 0x68

    invoke-virtual {v1, v3, v2}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setInt(II)V

    .line 69
    iget v2, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->height:I

    const/16 v3, 0x69

    invoke-virtual {v1, v3, v2}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setInt(II)V

    .line 70
    iget-object v2, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->compressorname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x6e

    invoke-virtual {v1, v3, v2}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setString(ILjava/lang/String;)V

    .line 71
    iget v2, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->depth:I

    const/16 v3, 0x6d

    invoke-virtual {v1, v3, v2}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setInt(II)V

    .line 74
    iget-wide v2, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->horizresolution:J

    const-wide/32 v4, -0x10000

    and-long/2addr v2, v4

    const/16 v6, 0x10

    shr-long/2addr v2, v6

    long-to-double v2, v2

    .line 75
    iget-wide v7, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->horizresolution:J

    const-wide/32 v9, 0xffff

    and-long/2addr v7, v9

    long-to-double v7, v7

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v7, v15

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v7

    const/16 v7, 0x6a

    invoke-virtual {v1, v7, v2, v3}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setDouble(ID)V

    .line 78
    iget-wide v2, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->vertresolution:J

    and-long/2addr v2, v4

    shr-long/2addr v2, v6

    long-to-double v2, v2

    .line 79
    iget-wide v4, v0, Lcom/drew/metadata/mp4/boxes/VisualSampleEntry;->vertresolution:J

    and-long/2addr v4, v9

    long-to-double v4, v4

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v6

    .line 80
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    const/16 v4, 0x6b

    invoke-virtual {v1, v4, v2, v3}, Lcom/drew/metadata/mp4/media/Mp4VideoDirectory;->setDouble(ID)V

    return-void
.end method
