.class public Lcom/google/android/gms/internal/zzblm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzblm$zza;,
        Lcom/google/android/gms/internal/zzblm$zzb;,
        Lcom/google/android/gms/internal/zzblm$zzc;,
        Lcom/google/android/gms/internal/zzblm$zzd;
    }
.end annotation


# static fields
.field private static final zzbWl:Lcom/google/android/gms/internal/zzblk$zzb;

.field private static final zzbWm:Lcom/google/android/gms/internal/zzblk$zza;


# instance fields
.field private zzaJz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/internal/zzblm$zzd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzblk$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblk$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzblm;->zzbWl:Lcom/google/android/gms/internal/zzblk$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zzblk$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzblk$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzblm;->zzbWm:Lcom/google/android/gms/internal/zzblk$zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic zzUS()Lcom/google/android/gms/internal/zzblk$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzblm;->zzbWm:Lcom/google/android/gms/internal/zzblk$zza;

    return-object v0
.end method

.method private static zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/PointF;",
            "Lcom/google/android/gms/internal/zzblk;",
            "Z",
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

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    new-instance v0, Lcom/google/android/gms/internal/zzblm$zza;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v10, v2, v9, v1}, Lcom/google/android/gms/internal/zzblk;->zza(F[Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/zzblm$zza;-><init>(Lcom/google/android/gms/internal/zzblm$zza;FLandroid/graphics/PointF;)V

    new-instance v13, Lcom/google/android/gms/internal/zzblm$zza;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    const/4 v14, 0x0

    invoke-interface {v10, v14, v9, v1}, Lcom/google/android/gms/internal/zzblk;->zza(F[Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-direct {v13, v0, v14, v1}, Lcom/google/android/gms/internal/zzblm$zza;-><init>(Lcom/google/android/gms/internal/zzblm$zza;FLandroid/graphics/PointF;)V

    const/4 v15, 0x1

    new-array v8, v15, [F

    move/from16 v1, p2

    move-object v7, v13

    :goto_0
    if-eqz v0, :cond_4

    move-object v6, v0

    move/from16 v16, v1

    :goto_1
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iget v2, v7, Lcom/google/android/gms/internal/zzblm$zza;->zzbWo:F

    iget-object v3, v7, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    iget v4, v6, Lcom/google/android/gms/internal/zzblm$zza;->zzbWo:F

    iget-object v1, v6, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object v14, v6

    move-object v6, v8

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v17, v8

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/zzblm;->zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;FLandroid/graphics/PointF;FLandroid/graphics/PointF;[FLandroid/graphics/PointF;F)Z

    move-result v0

    const/16 v20, 0x0

    if-nez v0, :cond_0

    if-eqz v16, :cond_0

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    new-array v6, v15, [F

    move-object/from16 v8, v19

    iget v2, v8, Lcom/google/android/gms/internal/zzblm$zza;->zzbWo:F

    iget-object v3, v8, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    aget v4, v17, v20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, v18

    move-object v15, v8

    move/from16 v8, p5

    invoke-static/range {v0 .. v8}, Lcom/google/android/gms/internal/zzblm;->zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;FLandroid/graphics/PointF;FLandroid/graphics/PointF;[FLandroid/graphics/PointF;F)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v16, 0x0

    goto :goto_2

    :cond_0
    move-object/from16 v15, v19

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/zzblm$zza;

    aget v2, v17, v20

    move-object/from16 v3, v18

    invoke-direct {v1, v14, v2, v3}, Lcom/google/android/gms/internal/zzblm$zza;-><init>(Lcom/google/android/gms/internal/zzblm$zza;FLandroid/graphics/PointF;)V

    iput-object v1, v15, Lcom/google/android/gms/internal/zzblm$zza;->zzbWn:Lcom/google/android/gms/internal/zzblm$zza;

    move-object v6, v1

    goto :goto_3

    :cond_2
    move-object v6, v14

    :goto_3
    if-nez v0, :cond_3

    iget-object v0, v6, Lcom/google/android/gms/internal/zzblm$zza;->zzbWn:Lcom/google/android/gms/internal/zzblm$zza;

    move-object v7, v6

    move/from16 v1, v16

    move-object/from16 v8, v17

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_0

    :cond_3
    move-object v7, v15

    move-object/from16 v8, v17

    const/4 v14, 0x0

    const/4 v15, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p6

    invoke-virtual {v0, v1, v1}, Landroid/graphics/PointF;->set(FF)V

    :cond_5
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_4
    if-eqz v13, :cond_6

    iget-object v2, v13, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v13, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iget-object v3, v13, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    invoke-static {v2, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v13, Lcom/google/android/gms/internal/zzblm$zza;->zzbWp:Landroid/graphics/PointF;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzblm$zza;->zzbWn:Lcom/google/android/gms/internal/zzblm$zza;

    goto :goto_4

    :cond_6
    return-void
.end method

.method static zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;FLandroid/graphics/PointF;FLandroid/graphics/PointF;[FLandroid/graphics/PointF;F)Z
    .locals 2

    add-float/2addr p4, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p4, p2

    const/4 v0, 0x0

    aput p4, p6, v0

    iget p4, p5, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/PointF;->x:F

    add-float/2addr p4, v1

    div-float/2addr p4, p2

    iget p5, p5, Landroid/graphics/PointF;->y:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    add-float/2addr p5, p3

    div-float/2addr p5, p2

    aget p2, p6, v0

    invoke-interface {p1, p2, p0, p7}, Lcom/google/android/gms/internal/zzblk;->zza(F[Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    iget p0, p7, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, p4

    iget p1, p7, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p5

    mul-float p0, p0, p0

    mul-float p1, p1, p1

    add-float/2addr p0, p1

    cmpl-float p0, p0, p8

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic zzb([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/gms/internal/zzblm;->zza([Landroid/graphics/PointF;Lcom/google/android/gms/internal/zzblk;ZLjava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    return-void
.end method


# virtual methods
.method public cubicTo(FFFFFF)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    new-instance v10, Lcom/google/android/gms/internal/zzblm$zzb;

    const/4 v9, 0x0

    move-object v2, v10

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/zzblm$zzb;-><init>(FFFFFFZ)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public moveTo(FF)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/internal/zzblm$zzc;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/zzblm$zzc;-><init>(FFZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zzj(F)[F
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    mul-float p1, p1, p1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/internal/zzblm;->zzaJz:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzblm$zzd;

    invoke-interface {v6, v1, v3, p1, v2}, Lcom/google/android/gms/internal/zzblm$zzd;->zza(Ljava/util/ArrayList;Ljava/util/ArrayList;FLandroid/graphics/PointF;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1, v0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v2, v0, 0x3

    new-array v2, v2, [F

    const/4 v5, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    div-float/2addr v8, p1

    aput v8, v2, v5

    add-int/lit8 v5, v7, 0x1

    iget v8, v6, Landroid/graphics/PointF;->x:F

    aput v8, v2, v7

    add-int/lit8 v7, v5, 0x1

    iget v6, v6, Landroid/graphics/PointF;->y:F

    aput v6, v2, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_1

    :cond_3
    return-object v2
.end method
