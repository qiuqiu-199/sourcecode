.class public Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "CasioType1MakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getCcdSensitivityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x40

    if-eq v1, v2, :cond_6

    const/16 v2, 0x50

    if-eq v1, v2, :cond_5

    const/16 v2, 0x64

    if-eq v1, v2, :cond_4

    const/16 v2, 0x7d

    if-eq v1, v2, :cond_3

    const/16 v2, 0xf4

    if-eq v1, v2, :cond_2

    const/16 v2, 0xfa

    if-eq v1, v2, :cond_1

    .line 94
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
    const-string v0, "+2.0"

    return-object v0

    :cond_2
    const-string v0, "+3.0"

    return-object v0

    :cond_3
    const-string v0, "+1.0"

    return-object v0

    :cond_4
    const-string v0, "High"

    return-object v0

    :cond_5
    const-string v0, "Normal (ISO 80 equivalent)"

    return-object v0

    :cond_6
    const-string v0, "Normal"

    return-object v0
.end method

.method public getContrastDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 107
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "High"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/16 v0, 0x14

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 72
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 68
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getSaturationDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getContrastDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :pswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :pswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getDigitalZoomDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :pswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :pswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getObjectDistanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :pswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getFlashIntensityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :pswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getFocusingModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :pswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :pswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getRecordingModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getCcdSensitivityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDigitalZoomDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 130
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
    const-string v0, "2x digital zoom"

    return-object v0

    :pswitch_1
    const-string v0, "No digital zoom"

    return-object v0

    :cond_1
    const-string v0, "4x digital zoom"

    return-object v0

    :cond_2
    const-string v0, "2x digital zoom"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFlashIntensityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0xf

    if-eq v1, v2, :cond_1

    .line 174
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
    const-string v0, "Strong"

    return-object v0

    :cond_2
    const-string v0, "Normal"

    return-object v0

    :cond_3
    const-string v0, "Weak"

    return-object v0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 181
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "Auto"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "On"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "Off"

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "Red eye reduction"

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v1}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocusingModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 187
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Macro"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Auto focus"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Manual focus"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Infinity"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectDistanceDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getFocalLengthDescription(D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 193
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Economy"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Normal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Fine"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    .line 199
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Single shutter"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Panorama"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Night scene"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "Portrait"

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const-string v1, "Landscape"

    const/4 v3, 0x4

    aput-object v1, v0, v3

    invoke-virtual {p0, v2, v2, v0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSaturationDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 101
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Low"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "High"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 113
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Soft"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Hard"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xb

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/CasioType1MakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x81

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 150
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
    const-string v0, "Shade"

    return-object v0

    :pswitch_1
    const-string v0, "Florescent"

    return-object v0

    :pswitch_2
    const-string v0, "Daylight"

    return-object v0

    :pswitch_3
    const-string v0, "Tungsten"

    return-object v0

    :pswitch_4
    const-string v0, "Auto"

    return-object v0

    :cond_1
    const-string v0, "Manual"

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
