.class public abstract Lcom/google/android/gms/awareness/fence/FenceState;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/awareness/fence/FenceState$State;
    }
.end annotation


# static fields
.field public static final FALSE:I = 0x1

.field public static final TRUE:I = 0x2

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method public static extract(Landroid/content/Intent;)Lcom/google/android/gms/awareness/fence/FenceState;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaet;->extract(Landroid/content/Intent;)Lcom/google/android/gms/awareness/fence/FenceState;

    move-result-object p0

    return-object p0
.end method

.method public static zzaf(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract getCurrentState()I
.end method

.method public abstract getFenceKey()Ljava/lang/String;
.end method

.method public abstract getLastFenceUpdateTimeMillis()J
.end method

.method public abstract getPreviousState()I
.end method
