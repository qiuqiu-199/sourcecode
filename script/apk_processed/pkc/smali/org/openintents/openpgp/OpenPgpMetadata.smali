.class public Lorg/openintents/openpgp/OpenPgpMetadata;
.super Ljava/lang/Object;
.source "OpenPgpMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/openintents/openpgp/OpenPgpMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field charset:Ljava/lang/String;

.field filename:Ljava/lang/String;

.field mimeType:Ljava/lang/String;

.field modificationTime:J

.field originalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Lorg/openintents/openpgp/OpenPgpMetadata$1;

    invoke-direct {v0}, Lorg/openintents/openpgp/OpenPgpMetadata$1;-><init>()V

    sput-object v0, Lorg/openintents/openpgp/OpenPgpMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->filename:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->mimeType:Ljava/lang/String;

    .line 72
    iput-wide p3, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->modificationTime:J

    .line 73
    iput-wide p5, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->originalSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->filename:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->mimeType:Ljava/lang/String;

    .line 63
    iput-wide p3, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->modificationTime:J

    .line 64
    iput-wide p5, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->originalSize:J

    .line 65
    iput-object p7, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->charset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSize()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->originalSize:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nfilename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nmimeType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nmodificationTime: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->modificationTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\noriginalSize: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->originalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\ncharset: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->charset:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 p2, 0x2

    .line 92
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 99
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->filename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-wide v1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->modificationTime:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 102
    iget-wide v1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->originalSize:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v1, p0, Lorg/openintents/openpgp/OpenPgpMetadata;->charset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int/2addr v1, v0

    .line 107
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/2addr v0, v1

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
