.class public Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "FujifilmMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 56
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method

.method private getMakernoteVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 120
    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutoBracketingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 365
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "No Flash & Flash"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x1100

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureWarningDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 411
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AE Good"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Over Exposed"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1302

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlurWarningDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 391
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No Blur Warning"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Blur warning"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1300

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorSaturationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 178
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v2, 0x80

    if-eq v1, v2, :cond_5

    const/16 v2, 0x100

    if-eq v1, v2, :cond_4

    const/16 v2, 0x180

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_2

    const v2, 0x8000

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 191
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
    const-string v0, "B&W Sepia"

    return-object v0

    :pswitch_1
    const-string v0, "B&W Blue Filter"

    return-object v0

    :pswitch_2
    const-string v0, "B&W Yellow Filter"

    return-object v0

    :pswitch_3
    const-string v0, "B&W Green Filter"

    return-object v0

    :pswitch_4
    const-string v0, "None (B&W)"

    return-object v0

    :cond_1
    const-string v0, "Film Simulation"

    return-object v0

    :cond_2
    const-string v0, "Low"

    return-object v0

    :cond_3
    const-string v0, "Medium Low"

    return-object v0

    :cond_4
    const-string v0, "High"

    return-object v0

    :cond_5
    const-string v0, "Medium High"

    return-object v0

    :cond_6
    const-string v0, "Normal"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x300
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x300

    if-eq v1, v2, :cond_1

    .line 225
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

    :cond_1
    const-string v0, "Low"

    return-object v0

    :cond_2
    const-string v0, "High"

    return-object v0

    :cond_3
    const-string v0, "Normal"

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    .line 113
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 111
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getDynamicRangeSettingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 109
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getFilmModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getDynamicRangeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 105
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getAutoExposureWarningDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 103
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getFocusWarningDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 101
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getBlurWarningDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 99
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getFinePixColorDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 97
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getAutoBracketingDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 95
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getExrModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getExrAutoDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 91
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getPictureModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 89
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getSlowSyncDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 87
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getMacroDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 83
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getFlashExposureValueDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 81
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 79
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getHighIsoNoiseReductionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 77
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getNoiseReductionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 75
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 73
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getToneDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 71
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getColorSaturationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 69
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 67
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 65
    :sswitch_17
    invoke-direct {p0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getMakernoteVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_17
        0x1001 -> :sswitch_16
        0x1002 -> :sswitch_15
        0x1003 -> :sswitch_14
        0x1004 -> :sswitch_13
        0x1006 -> :sswitch_12
        0x100b -> :sswitch_11
        0x100e -> :sswitch_10
        0x1010 -> :sswitch_f
        0x1011 -> :sswitch_e
        0x1020 -> :sswitch_d
        0x1021 -> :sswitch_c
        0x1030 -> :sswitch_b
        0x1031 -> :sswitch_a
        0x1033 -> :sswitch_9
        0x1034 -> :sswitch_8
        0x1100 -> :sswitch_7
        0x1210 -> :sswitch_6
        0x1300 -> :sswitch_5
        0x1301 -> :sswitch_4
        0x1302 -> :sswitch_3
        0x1400 -> :sswitch_2
        0x1401 -> :sswitch_1
        0x1402 -> :sswitch_0
    .end sparse-switch
.end method

.method public getDynamicRangeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 421
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Standard"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v2, "Wide"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/16 v2, 0x1400

    invoke-virtual {p0, v2, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicRangeSettingDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1402

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 458
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 466
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

    :sswitch_0
    const-string v0, "Film Simulation"

    return-object v0

    :sswitch_1
    const-string v0, "Wide 2 (400%)"

    return-object v0

    :sswitch_2
    const-string v0, "Wide 1 (230%)"

    return-object v0

    :sswitch_3
    const-string v0, "Standard (100%)"

    return-object v0

    :sswitch_4
    const-string v0, "Manual"

    return-object v0

    :sswitch_5
    const-string v0, "Auto (100-400%)"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_4
        0x100 -> :sswitch_3
        0x200 -> :sswitch_2
        0x201 -> :sswitch_1
        0x8000 -> :sswitch_0
    .end sparse-switch
.end method

.method public getExrAutoDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 344
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1033

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExrModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 350
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1034

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 353
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_2

    const/16 v2, 0x300

    if-eq v1, v2, :cond_1

    .line 358
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

    :cond_1
    const-string v0, "DR (Dynamic Range Priority)"

    return-object v0

    :cond_2
    const-string v0, "SN (Signal to Noise Priority)"

    return-object v0

    :cond_3
    const-string v0, "HR (High Resolution)"

    return-object v0
.end method

.method public getFilmModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 433
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1401

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 436
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    const/16 v2, 0x100

    if-eq v1, v2, :cond_7

    const/16 v2, 0x110

    if-eq v1, v2, :cond_6

    const/16 v2, 0x120

    if-eq v1, v2, :cond_5

    const/16 v2, 0x130

    if-eq v1, v2, :cond_4

    const/16 v2, 0x200

    if-eq v1, v2, :cond_3

    const/16 v2, 0x300

    if-eq v1, v2, :cond_2

    const/16 v2, 0x400

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 448
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
    const-string v0, "Pro Neg. Hi"

    return-object v0

    :pswitch_1
    const-string v0, "Pro Neg. Std"

    return-object v0

    :cond_1
    const-string v0, "F4/Velvia"

    return-object v0

    :cond_2
    const-string v0, "F3/Studio Portrait Ex"

    return-object v0

    :cond_3
    const-string v0, "F2/Fujichrome (Velvia)"

    return-object v0

    :cond_4
    const-string v0, "F1c/Studio Portrait Increased Sharpness"

    return-object v0

    :cond_5
    const-string v0, "F1b/Studio Portrait Smooth Skin Tone (Astia)"

    return-object v0

    :cond_6
    const-string v0, "F1a/Studio Portrait Enhanced Saturation"

    return-object v0

    :cond_7
    const-string v0, "F1/Studio Portrait"

    return-object v0

    :cond_8
    const-string v0, "F0/Standard (Provia) "

    return-object v0

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFinePixColorDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1210

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 379
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 384
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

    :cond_1
    const-string v0, "B&W"

    return-object v0

    :cond_2
    const-string v0, "Chrome"

    return-object v0

    :cond_3
    const-string v0, "Standard"

    return-object v0
.end method

.method public getFlashExposureValueDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1011

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getRational(I)Lcom/drew/lang/Rational;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 276
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/drew/lang/Rational;->toSimpleString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " EV (Apex)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 262
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Off"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Red-eye Reduction"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "External"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x1010

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 288
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto Focus"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Manual Focus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1021

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusWarningDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 401
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Good Focus"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Out Of Focus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1301

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHighIsoNoiseReductionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x100e

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x200

    if-eq v1, v2, :cond_1

    .line 255
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

    :cond_1
    const-string v0, "Weak"

    return-object v0

    :cond_2
    const-string v0, "Strong"

    return-object v0

    :cond_3
    const-string v0, "Normal"

    return-object v0
.end method

.method public getMacroDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 282
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1020

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoiseReductionDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x100b

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_3

    const/16 v2, 0x80

    if-eq v1, v2, :cond_2

    const/16 v2, 0x100

    if-eq v1, v2, :cond_1

    .line 240
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

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "Normal"

    return-object v0

    :cond_3
    const-string v0, "Low"

    return-object v0
.end method

.method public getPictureModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1031

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_2

    const/16 v2, 0x300

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    .line 337
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
    const-string v0, "Cat Face Detection"

    return-object v0

    :pswitch_1
    const-string v0, "Dog Face Detection"

    return-object v0

    :pswitch_2
    const-string v0, "Pro Focus"

    return-object v0

    :pswitch_3
    const-string v0, "Pro Low-light"

    return-object v0

    :pswitch_4
    const-string v0, "Night (Tripod)"

    return-object v0

    :pswitch_5
    const-string v0, "Panorama"

    return-object v0

    :pswitch_6
    const-string v0, "Portrait with Skin Correction"

    return-object v0

    :pswitch_7
    const-string v0, "Underwater"

    return-object v0

    :pswitch_8
    const-string v0, "Fireworks"

    return-object v0

    :pswitch_9
    const-string v0, "Snow"

    return-object v0

    :pswitch_a
    const-string v0, "Beach"

    return-object v0

    :pswitch_b
    const-string v0, "Natural Light & Flash"

    return-object v0

    :pswitch_c
    const-string v0, "Text"

    return-object v0

    :pswitch_d
    const-string v0, "Flower"

    return-object v0

    :pswitch_e
    const-string v0, "Party"

    return-object v0

    :pswitch_f
    const-string v0, "Museum"

    return-object v0

    :pswitch_10
    const-string v0, "Sunset"

    return-object v0

    :pswitch_11
    const-string v0, "Beach & Snow"

    return-object v0

    :pswitch_12
    const-string v0, "Anti-blur"

    return-object v0

    :pswitch_13
    const-string v0, "Natural Light"

    return-object v0

    :pswitch_14
    const-string v0, "Program AE"

    return-object v0

    :pswitch_15
    const-string v0, "Night scene"

    return-object v0

    :pswitch_16
    const-string v0, "Sports scene"

    return-object v0

    :pswitch_17
    const-string v0, "Macro"

    return-object v0

    :pswitch_18
    const-string v0, "Landscape scene"

    return-object v0

    :pswitch_19
    const-string v0, "Portrait scene"

    return-object v0

    :pswitch_1a
    const-string v0, "Auto"

    return-object v0

    :cond_1
    const-string v0, "Manual exposure"

    return-object v0

    :cond_2
    const-string v0, "Shutter priority AE"

    return-object v0

    :cond_3
    const-string v0, "Aperture priority AE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x82

    if-eq v1, v2, :cond_4

    const/16 v2, 0x84

    if-eq v1, v2, :cond_3

    const v2, 0x8000

    if-eq v1, v2, :cond_2

    const v2, 0xffff

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 140
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
    const-string v0, "Hardest"

    return-object v0

    :pswitch_1
    const-string v0, "Hard"

    return-object v0

    :pswitch_2
    const-string v0, "Normal"

    return-object v0

    :pswitch_3
    const-string v0, "Soft"

    return-object v0

    :pswitch_4
    const-string v0, "Softest"

    return-object v0

    :cond_1
    const-string v0, "N/A"

    return-object v0

    :cond_2
    const-string v0, "Film Simulation"

    return-object v0

    :cond_3
    const-string v0, "Medium Hard"

    return-object v0

    :cond_4
    const-string v0, "Medium Soft"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSlowSyncDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 294
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x1030

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToneDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_7

    const/16 v2, 0x80

    if-eq v1, v2, :cond_6

    const/16 v2, 0x100

    if-eq v1, v2, :cond_5

    const/16 v2, 0x180

    if-eq v1, v2, :cond_4

    const/16 v2, 0x200

    if-eq v1, v2, :cond_3

    const/16 v2, 0x300

    if-eq v1, v2, :cond_2

    const v2, 0x8000

    if-eq v1, v2, :cond_1

    .line 210
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

    :cond_1
    const-string v0, "Film Simulation"

    return-object v0

    :cond_2
    const-string v0, "None (B&W)"

    return-object v0

    :cond_3
    const-string v0, "Low"

    return-object v0

    :cond_4
    const-string v0, "Medium Low"

    return-object v0

    :cond_5
    const-string v0, "High"

    return-object v0

    :cond_6
    const-string v0, "Medium High"

    return-object v0

    :cond_7
    const-string v0, "Normal"

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/FujifilmMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v2, 0x100

    if-eq v1, v2, :cond_5

    const/16 v2, 0x200

    if-eq v1, v2, :cond_4

    const/16 v2, 0x400

    if-eq v1, v2, :cond_3

    const/16 v2, 0x500

    if-eq v1, v2, :cond_2

    const/16 v2, 0xff0

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 168
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
    const-string v0, "Custom White Balance 5"

    return-object v0

    :pswitch_1
    const-string v0, "Custom White Balance 4"

    return-object v0

    :pswitch_2
    const-string v0, "Custom White Balance 3"

    return-object v0

    :pswitch_3
    const-string v0, "Custom White Balance 2"

    return-object v0

    :pswitch_4
    const-string v0, "Custom White Balance"

    return-object v0

    :pswitch_5
    const-string v0, "Living Room Warm White Fluorescent"

    return-object v0

    :pswitch_6
    const-string v0, "Warm White Fluorescent"

    return-object v0

    :pswitch_7
    const-string v0, "White Fluorescent"

    return-object v0

    :pswitch_8
    const-string v0, "Day White Fluorescent"

    return-object v0

    :pswitch_9
    const-string v0, "Daylight Fluorescent"

    return-object v0

    :cond_1
    const-string v0, "Kelvin"

    return-object v0

    :cond_2
    const-string v0, "Flash"

    return-object v0

    :cond_3
    const-string v0, "Incandescence"

    return-object v0

    :cond_4
    const-string v0, "Cloudy"

    return-object v0

    :cond_5
    const-string v0, "Daylight"

    return-object v0

    :cond_6
    const-string v0, "Auto"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x300
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf00
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
