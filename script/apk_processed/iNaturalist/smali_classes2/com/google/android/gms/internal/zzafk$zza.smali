.class public Lcom/google/android/gms/internal/zzafk$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzafk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzafk$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final name:I

.field public final zzaJN:I

.field public final zzaJO:Lcom/google/android/gms/internal/zzagf;

.field public final zzaJP:Lcom/google/android/gms/internal/zzafx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzafl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzafl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzafk$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILcom/google/android/gms/internal/zzagf;Lcom/google/android/gms/internal/zzafx;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJN:I

    iput p2, p0, Lcom/google/android/gms/internal/zzafk$zza;->name:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJO:Lcom/google/android/gms/internal/zzagf;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJP:Lcom/google/android/gms/internal/zzafx;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzafk$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzafk$zza;

    iget v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJN:I

    iget v3, p1, Lcom/google/android/gms/internal/zzafk$zza;->zzaJN:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->name:I

    iget v3, p1, Lcom/google/android/gms/internal/zzafk$zza;->name:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJO:Lcom/google/android/gms/internal/zzagf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzafk$zza;->zzaJO:Lcom/google/android/gms/internal/zzagf;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzagf;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJP:Lcom/google/android/gms/internal/zzafx;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzafk$zza;->zzaJP:Lcom/google/android/gms/internal/zzafx;

    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJO:Lcom/google/android/gms/internal/zzagf;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzafk$zza;->zzaJP:Lcom/google/android/gms/internal/zzafx;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzafl;->zza(Lcom/google/android/gms/internal/zzafk$zza;Landroid/os/Parcel;I)V

    return-void
.end method
