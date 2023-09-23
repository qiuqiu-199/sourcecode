.class public Lcom/google/android/gms/internal/zzaet;
.super Lcom/google/android/gms/awareness/fence/FenceState;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/zzaet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaJt:I

.field public final zzaJu:J

.field public final zzaJv:Ljava/lang/String;

.field public final zzaJw:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaeu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaeu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceState;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzaet;->zzaJt:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzaet;->zzaJu:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaet;->zzaJv:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/internal/zzaet;->zzaJw:I

    return-void
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/awareness/fence/FenceState;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/zzaet;

    const-string v0, "context_fence_current_state"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "context_fence_last_updated_time"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v0, "context_fence_key"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "context_fence_previous_state"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    move-object v0, v6

    move v1, v2

    move-wide v2, v3

    move-object v4, v5

    move v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaet;-><init>(IJLjava/lang/String;I)V

    return-object v6
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaet;->zzaJt:I

    return v0
.end method

.method public getFenceKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaet;->zzaJv:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFenceUpdateTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzaet;->zzaJu:J

    return-wide v0
.end method

.method public getPreviousState()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaet;->zzaJw:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaeu;->zza(Lcom/google/android/gms/internal/zzaet;Landroid/os/Parcel;I)V

    return-void
.end method
