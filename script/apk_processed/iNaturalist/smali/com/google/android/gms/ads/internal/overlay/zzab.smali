.class public Lcom/google/android/gms/ads/internal/overlay/zzab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zzab$zza;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private zzNY:Z

.field private final zzPj:Lcom/google/android/gms/ads/internal/overlay/zzab$zza;

.field private zzPk:Z

.field private zzPl:Z

.field private zzPm:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/zzab$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPm:F

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->mAudioManager:Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPj:Lcom/google/android/gms/ads/internal/overlay/zzab$zza;

    return-void
.end method

.method private zziB()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzNY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPl:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPm:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziC()V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPj:Lcom/google/android/gms/ads/internal/overlay/zzab$zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzab$zza;->zzhC()V

    goto :goto_2

    :cond_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziD()V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private zziC()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private zziD()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPj:Lcom/google/android/gms/ads/internal/overlay/zzab$zza;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/overlay/zzab$zza;->zzhC()V

    return-void
.end method

.method public setMuted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPl:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziB()V

    return-void
.end method

.method public zzb(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPm:F

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziB()V

    return-void
.end method

.method public zziA()F
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPl:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPm:F

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzPk:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public zzix()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzNY:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziB()V

    return-void
.end method

.method public zziy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzab;->zzNY:Z

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/overlay/zzab;->zziB()V

    return-void
.end method
