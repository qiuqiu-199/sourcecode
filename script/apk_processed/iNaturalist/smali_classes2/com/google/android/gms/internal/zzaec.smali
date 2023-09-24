.class public Lcom/google/android/gms/internal/zzaec;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzaec;",
            ">;"
        }
    .end annotation
.end field

.field private static zzaJa:Lcom/google/android/gms/internal/zzci;

.field public static final zzaJb:[I


# instance fields
.field private zzaJc:Lcom/google/android/gms/internal/zzbwp;

.field private zzaJd:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaec$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaec$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaec;->zzaJa:Lcom/google/android/gms/internal/zzci;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/zzaec;->zzaJb:[I

    new-instance v0, Lcom/google/android/gms/internal/zzaee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaec;->zzzT()V

    return-void
.end method

.method private zzzR()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaec;->zzzS()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbwp;->zzac([B)Lcom/google/android/gms/internal/zzbwp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbxs; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ContextData"

    const-string v2, "Could not deserialize context bytes."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaec;->zzzT()V

    return-void
.end method

.method private zzzT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzaec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzaec;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaec;->zzzR()V

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzaec;->zzzR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaec;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaec;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbwp;->zzctg:Lcom/google/android/gms/internal/zzbws;

    iget v1, v1, Lcom/google/android/gms/internal/zzbws;->version:I

    iget-object p1, p1, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzbwp;->zzctg:Lcom/google/android/gms/internal/zzbws;

    iget p1, p1, Lcom/google/android/gms/internal/zzbws;->version:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaec;->zzzR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbwp;->zzctf:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaec;->zzzR()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaec;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzbwp;->zzctg:Lcom/google/android/gms/internal/zzbws;

    iget v1, v1, Lcom/google/android/gms/internal/zzbws;->version:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaec;->zzzR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwp;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaee;->zza(Lcom/google/android/gms/internal/zzaec;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzzS()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method zzzU()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJd:[B

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaec;->zzaJc:Lcom/google/android/gms/internal/zzbwp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbxt;->zzf(Lcom/google/android/gms/internal/zzbxt;)[B

    move-result-object v0

    return-object v0
.end method
