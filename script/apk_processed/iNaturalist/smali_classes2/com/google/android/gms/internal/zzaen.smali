.class public Lcom/google/android/gms/internal/zzaen;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzaen;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaJm:Ljava/lang/String;

.field public zzaJn:Lcom/google/android/gms/internal/zzaep;

.field public final zzaJo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaeo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaeo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaen;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLcom/google/android/gms/internal/zzaep;)V
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/internal/zzaep;

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/google/android/gms/internal/zzaen;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzaep;J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzaep;J)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaen;->zzaJm:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaen;->zzaJn:Lcom/google/android/gms/internal/zzaep;

    iput-wide p3, p0, Lcom/google/android/gms/internal/zzaen;->zzaJo:J

    return-void
.end method

.method public static zza(Ljava/lang/String;JLcom/google/android/gms/internal/zzaep;)Lcom/google/android/gms/internal/zzaen;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaen;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaen;-><init>(Ljava/lang/String;JLcom/google/android/gms/internal/zzaep;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzaen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzaen;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaen;->zzaJm:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzaen;->zzaJm:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzaen;->zzaJo:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzaen;->zzaJo:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaen;->zzaJm:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzaen;->zzaJo:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaeo;->zza(Lcom/google/android/gms/internal/zzaen;Landroid/os/Parcel;I)V

    return-void
.end method
