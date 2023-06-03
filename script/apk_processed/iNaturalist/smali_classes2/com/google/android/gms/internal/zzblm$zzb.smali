.class public Lcom/google/android/gms/internal/zzblm$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzblm$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzblm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field final zzbWq:F

.field final zzbWr:F

.field final zzbWs:F

.field final zzbWt:F

.field final zzbWu:F

.field final zzbWv:F

.field private final zzbWw:Z


# direct methods
.method public constructor <init>(FFFFFFZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWq:F

    iput p2, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWr:F

    iput p3, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWs:F

    iput p4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWt:F

    iput p5, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWu:F

    iput p6, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWv:F

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWw:Z

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 10
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

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWw:Z

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x4

    if-eqz v2, :cond_1

    new-array v2, v7, [Landroid/graphics/PointF;

    aput-object v0, v2, v6

    new-instance v6, Landroid/graphics/PointF;

    iget v7, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWq:F

    iget v8, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWr:F

    iget v9, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v9

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v2, v1

    new-instance v1, Landroid/graphics/PointF;

    iget v6, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWs:F

    iget v7, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWt:F

    iget v8, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    invoke-direct {v1, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v2, v4

    new-instance v1, Landroid/graphics/PointF;

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWu:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v4, v6

    iget v6, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWv:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v6, v0

    invoke-direct {v1, v4, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v2, v3

    goto :goto_1

    :cond_1
    new-array v2, v7, [Landroid/graphics/PointF;

    aput-object v0, v2, v6

    new-instance v0, Landroid/graphics/PointF;

    iget v6, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWq:F

    iget v7, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWr:F

    invoke-direct {v0, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v2, v1

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWs:F

    iget v6, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWt:F

    invoke-direct {v0, v1, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v2, v4

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWu:F

    iget v4, p0, Lcom/google/android/gms/internal/zzblm$zzb;->zzbWv:F

    invoke-direct {v0, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v0, v2, v3

    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/zzblm;->zzUS()Lcom/google/android/gms/internal/zzblk$zza;

    move-result-object v3

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/zzblm;->zzb([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    return-void
.end method
