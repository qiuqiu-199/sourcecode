.class public Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "SanyoMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getColorAdjustmentModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 152
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x210

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDigitalZoomDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x204

    const/4 v1, 0x3

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getDecimalRational(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDigitalZoomOnDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 194
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x21b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 226
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Force"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Disabled"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Red eye"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x225

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFlickerReduceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 182
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x218

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLightSourceSpecialDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 200
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x21d

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMacroDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 128
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Macro"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "View"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Manual"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x202

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOptimalZoomOnDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 188
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x219

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getQuickShotDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 158
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x213

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRecordShutterDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 176
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Record while down"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Press start, press stop"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x217

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResavedDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 206
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Yes"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x21e

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSceneSelectDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x7

    .line 212
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Sport"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "TV"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Night"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "User 1"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "User 2"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Lamp"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x21f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelfTimerDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 164
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x214

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSequenceShotIntervalDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 219
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "5 frames/sec"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "10 frames/sec"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "15 frames/sec"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "20 frames/sec"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x224

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSequentialShotDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 140
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Standard"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Best"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Adjust Exposure"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x20e

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVoiceMemoDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 170
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x216

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWideRangeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 146
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x20f

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :sswitch_0
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :sswitch_1
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getSequenceShotIntervalDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_2
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getSceneSelectDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :sswitch_3
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getResavedDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :sswitch_4
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getLightSourceSpecialDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :sswitch_5
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getDigitalZoomOnDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :sswitch_6
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getOptimalZoomOnDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :sswitch_7
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getFlickerReduceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :sswitch_8
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getRecordShutterDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :sswitch_9
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getVoiceMemoDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 63
    :sswitch_a
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getSelfTimerDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 61
    :sswitch_b
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getQuickShotDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :sswitch_c
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getColorAdjustmentModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :sswitch_d
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getWideRangeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :sswitch_e
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getSequentialShotDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :sswitch_f
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 51
    :sswitch_10
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getMacroDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 49
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->getSanyoQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x201 -> :sswitch_11
        0x202 -> :sswitch_10
        0x204 -> :sswitch_f
        0x20e -> :sswitch_e
        0x20f -> :sswitch_d
        0x210 -> :sswitch_c
        0x213 -> :sswitch_b
        0x214 -> :sswitch_a
        0x216 -> :sswitch_9
        0x217 -> :sswitch_8
        0x218 -> :sswitch_7
        0x219 -> :sswitch_6
        0x21b -> :sswitch_5
        0x21d -> :sswitch_4
        0x21e -> :sswitch_3
        0x21f -> :sswitch_2
        0x224 -> :sswitch_1
        0x225 -> :sswitch_0
    .end sparse-switch
.end method

.method public getSanyoQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;

    const/16 v1, 0x201

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/SanyoMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "Super Fine/Super High"

    return-object v0

    :pswitch_1
    const-string v0, "Super Fine/Very High"

    return-object v0

    :pswitch_2
    const-string v0, "Super Fine/High"

    return-object v0

    :pswitch_3
    const-string v0, "Super Fine/Medium High"

    return-object v0

    :pswitch_4
    const-string v0, "Super Fine/Medium"

    return-object v0

    :pswitch_5
    const-string v0, "Super Fine/Medium Low"

    return-object v0

    :pswitch_6
    const-string v0, "Super Fine/Low"

    return-object v0

    :pswitch_7
    const-string v0, "Super Fine/Very Low"

    return-object v0

    :pswitch_8
    const-string v0, "Fine/Super High"

    return-object v0

    :pswitch_9
    const-string v0, "Fine/Very High"

    return-object v0

    :pswitch_a
    const-string v0, "Fine/High"

    return-object v0

    :pswitch_b
    const-string v0, "Fine/Medium High"

    return-object v0

    :pswitch_c
    const-string v0, "Fine/Medium"

    return-object v0

    :pswitch_d
    const-string v0, "Fine/Medium Low"

    return-object v0

    :pswitch_e
    const-string v0, "Fine/Low"

    return-object v0

    :pswitch_f
    const-string v0, "Fine/Very Low"

    return-object v0

    :pswitch_10
    const-string v0, "Normal/Super High"

    return-object v0

    :pswitch_11
    const-string v0, "Normal/Very High"

    return-object v0

    :pswitch_12
    const-string v0, "Normal/High"

    return-object v0

    :pswitch_13
    const-string v0, "Normal/Medium High"

    return-object v0

    :pswitch_14
    const-string v0, "Normal/Medium"

    return-object v0

    :pswitch_15
    const-string v0, "Normal/Medium Low"

    return-object v0

    :pswitch_16
    const-string v0, "Normal/Low"

    return-object v0

    :pswitch_17
    const-string v0, "Normal/Very Low"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x100
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x200
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
