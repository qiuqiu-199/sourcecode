.class public Lcom/google/android/gms/internal/zzblm$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzblm$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field final x:F

.field final y:F

.field private final zzbWw:Z


# direct methods
.method public constructor <init>(FFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzblm$zzc;->x:F

    iput p2, p0, Lcom/google/android/gms/internal/zzblm$zzc;->y:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzblm$zzc;->zzbWw:Z

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;F",
            "Landroid/graphics/PointF;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    :goto_0
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    goto :goto_0

    :goto_1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/zzblm$zzc;->zzbWw:Z

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    new-instance p3, Landroid/graphics/PointF;

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/google/android/gms/internal/zzblm$zzc;->x:F

    add-float/2addr v0, v1

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/google/android/gms/internal/zzblm$zzc;->y:F

    add-float/2addr p2, v1

    invoke-direct {p3, v0, p2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    :cond_1
    new-instance p3, Landroid/graphics/PointF;

    iget p2, p0, Lcom/google/android/gms/internal/zzblm$zzc;->x:F

    iget v0, p0, Lcom/google/android/gms/internal/zzblm$zzc;->y:F

    invoke-direct {p3, p2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_2
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, p3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method
