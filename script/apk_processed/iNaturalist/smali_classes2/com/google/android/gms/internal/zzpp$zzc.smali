.class public Lcom/google/android/gms/internal/zzpp$zzc;
.super Lcom/google/android/gms/internal/zzpp$zzb;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzpp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzpp$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public zzn(Lcom/google/android/gms/internal/zzqw;)Landroid/webkit/WebChromeClient;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzrf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzrf;-><init>(Lcom/google/android/gms/internal/zzqw;)V

    return-object v0
.end method
