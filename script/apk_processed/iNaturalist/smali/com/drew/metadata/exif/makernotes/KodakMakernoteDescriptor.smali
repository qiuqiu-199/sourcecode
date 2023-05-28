.class public Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "KodakMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getBurstModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 144
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Off"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "On"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_5

    const/16 v2, 0x40

    if-eq v1, v2, :cond_4

    const/16 v2, 0x100

    if-eq v1, v2, :cond_3

    const/16 v2, 0x200

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2000

    if-eq v1, v2, :cond_2

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 90
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
    const-string v0, "B&W Red Filter"

    return-object v0

    :pswitch_1
    const-string v0, "B&W Yellow Filter"

    return-object v0

    :cond_1
    :pswitch_2
    const-string v0, "Sepia"

    return-object v0

    :cond_2
    :pswitch_3
    const-string v0, "B&W"

    return-object v0

    :cond_3
    const-string v0, "Saturated Color"

    return-object v0

    :cond_4
    const-string v0, "Neutral Color"

    return-object v0

    :cond_5
    const-string v0, "Saturated Color"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    sparse-switch p1, :sswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 64
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getSharpnessDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 62
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getColorModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getFlashFiredDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getWhiteBalanceDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 54
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getShutterModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 50
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getBurstModeDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 48
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getQualityDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_8
        0xa -> :sswitch_7
        0x1b -> :sswitch_6
        0x38 -> :sswitch_5
        0x40 -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x66 -> :sswitch_1
        0x6b -> :sswitch_0
    .end sparse-switch
.end method

.method public getFlashFiredDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 97
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "No"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Yes"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x5d

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x40

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 111
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
    const-string v0, "Auto"

    return-object v0

    :cond_1
    :pswitch_1
    const-string v0, "Red Eye"

    return-object v0

    :cond_2
    :pswitch_2
    const-string v0, "Off"

    return-object v0

    :cond_3
    :pswitch_3
    const-string v0, "Fill Flash"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x3

    .line 124
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const-string v1, "Macro"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x38

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualityDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x2

    .line 150
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Fine"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Normal"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v2, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x1

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x6b

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShutterModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    .line 137
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
    const-string v0, "Manual"

    return-object v0

    :cond_2
    const-string v0, "Aperture Priority"

    return-object v0

    :cond_3
    const-string v0, "Auto"

    return-object v0
.end method

.method public getWhiteBalanceDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x4

    .line 118
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Auto"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Flash"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Tungsten"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Daylight"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x40

    invoke-virtual {p0, v1, v0}, Lcom/drew/metadata/exif/makernotes/KodakMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
