.class public Lcom/google/android/gms/drive/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaKA:J

.field final zzaKB:J

.field final zzaKC:J

.field private volatile zzaKD:Ljava/lang/String;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/drive/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJJ)V
    .locals 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaKD:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v4, p4, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    cmp-long v4, p6, v2

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzax(Z)V

    iput p1, p0, Lcom/google/android/gms/drive/zza;->zzaiI:I

    iput-wide p2, p0, Lcom/google/android/gms/drive/zza;->zzaKA:J

    iput-wide p4, p0, Lcom/google/android/gms/drive/zza;->zzaKB:J

    iput-wide p6, p0, Lcom/google/android/gms/drive/zza;->zzaKC:J

    return-void
.end method


# virtual methods
.method public final encodeToString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaKD:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zza;->zzAn()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChangeSequenceNumber:"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaKD:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/drive/zza;->zzaKD:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/drive/zza;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/drive/zza;

    iget-wide v2, p1, Lcom/google/android/gms/drive/zza;->zzaKB:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/zza;->zzaKB:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p1, Lcom/google/android/gms/drive/zza;->zzaKC:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/zza;->zzaKC:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-wide v2, p1, Lcom/google/android/gms/drive/zza;->zzaKA:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/zza;->zzaKA:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/drive/zza;->zzaKA:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->zzaKB:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/drive/zza;->zzaKC:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/drive/zza;->encodeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/zzb;->zza(Lcom/google/android/gms/drive/zza;Landroid/os/Parcel;I)V

    return-void
.end method

.method final zzAn()[B
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzalr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalr;-><init>()V

    iget v1, p0, Lcom/google/android/gms/drive/zza;->zzaiI:I

    iput v1, v0, Lcom/google/android/gms/internal/zzalr;->versionCode:I

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->zzaKA:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzalr;->zzaOC:J

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->zzaKB:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzalr;->zzaOD:J

    iget-wide v1, p0, Lcom/google/android/gms/drive/zza;->zzaKC:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzalr;->zzaOE:J

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v0

    return-object v0
.end method
