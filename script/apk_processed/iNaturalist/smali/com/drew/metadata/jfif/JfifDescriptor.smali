.class public Lcom/drew/metadata/jfif/JfifDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "JfifDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor<",
        "Lcom/drew/metadata/jfif/JfifDirectory;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/drew/metadata/jfif/JfifDirectory;)V
    .locals 0
    .param p1    # Lcom/drew/metadata/jfif/JfifDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .line 44
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 61
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 53
    :pswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageResXDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 59
    :pswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageResUnitsDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageResYDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/drew/metadata/jfif/JfifDescriptor;->getImageVersionDescription()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getImageResUnitsDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/jfif/JfifDirectory;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "unit"

    return-object v0

    :pswitch_0
    const-string v0, "centimetre"

    return-object v0

    :pswitch_1
    const-string v0, "inch"

    return-object v0

    :pswitch_2
    const-string v0, "none"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getImageResXDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/jfif/JfifDirectory;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "%d dot%s"

    const/4 v2, 0x2

    .line 91
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "s"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageResYDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/jfif/JfifDirectory;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "%d dot%s"

    const/4 v2, 0x2

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, "s"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageVersionDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/drew/metadata/jfif/JfifDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v0, Lcom/drew/metadata/jfif/JfifDirectory;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/drew/metadata/jfif/JfifDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "%d.%d"

    const/4 v2, 0x2

    .line 71
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
