.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzrT:Z

.field private zzrU:I

.field private zzrV:Z

.field private zzrW:I

.field private zzrX:Lcom/google/android/gms/ads/VideoOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrT:Z

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrU:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrV:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrW:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrT:Z

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrU:I

    return p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrV:Z

    return p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrW:I

    return p0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Lcom/google/android/gms/ads/VideoOptions;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrX:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/NativeAdOptions$1;)V

    return-object v0
.end method

.method public setAdChoicesPlacement(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/ads/formats/NativeAdOptions$AdChoicesPlacement;
        .end annotation
    .end param

    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrW:I

    return-object p0
.end method

.method public setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrU:I

    return-object p0
.end method

.method public setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrV:Z

    return-object p0
.end method

.method public setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrT:Z

    return-object p0
.end method

.method public setVideoOptions(Lcom/google/android/gms/ads/VideoOptions;)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zzrX:Lcom/google/android/gms/ads/VideoOptions;

    return-object p0
.end method
