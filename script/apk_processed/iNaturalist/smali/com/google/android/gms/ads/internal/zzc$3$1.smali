.class Lcom/google/android/gms/ads/internal/zzc$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzsL:Lcom/google/android/gms/ads/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc$3;Lcom/google/android/gms/ads/internal/zzf;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$3$1;->zzsL:Lcom/google/android/gms/ads/internal/zzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$3$1;->zzsL:Lcom/google/android/gms/ads/internal/zzf;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzf;->recordClick()V

    const/4 p1, 0x0

    return p1
.end method
