.class Lcom/google/android/gms/wearable/internal/zzn$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/zzn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field final zzbTL:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

.field final zzbTM:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTL:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iput-object p2, p0, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTM:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/wearable/internal/zzn$zzb;

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTL:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    iget-object v2, p1, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTL:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTM:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTM:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTL:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTM:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public onCapabilityChanged(Lcom/google/android/gms/wearable/CapabilityInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/zzn$zzb;->zzbTL:Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/CapabilityApi$CapabilityListener;->onCapabilityChanged(Lcom/google/android/gms/wearable/CapabilityInfo;)V

    return-void
.end method
