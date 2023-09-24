.class public Lcom/google/android/gms/vision/MultiProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/MultiProcessor$zza;,
        Lcom/google/android/gms/vision/MultiProcessor$Builder;,
        Lcom/google/android/gms/vision/MultiProcessor$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private zzbOB:Lcom/google/android/gms/vision/MultiProcessor$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/MultiProcessor$Factory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private zzbOC:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/MultiProcessor$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzbOp:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOp:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/MultiProcessor$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/vision/MultiProcessor;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/MultiProcessor;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOp:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/MultiProcessor;Lcom/google/android/gms/vision/MultiProcessor$Factory;)Lcom/google/android/gms/vision/MultiProcessor$Factory;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOB:Lcom/google/android/gms/vision/MultiProcessor$Factory;

    return-object p1
.end method

.method private zza(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/google/android/gms/vision/MultiProcessor$zza;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/vision/MultiProcessor$zza;-><init>(Lcom/google/android/gms/vision/MultiProcessor;Lcom/google/android/gms/vision/MultiProcessor$1;)V

    iget-object v4, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOB:Lcom/google/android/gms/vision/MultiProcessor$Factory;

    invoke-interface {v4, v2}, Lcom/google/android/gms/vision/MultiProcessor$Factory;->create(Ljava/lang/Object;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zza(Lcom/google/android/gms/vision/MultiProcessor$zza;Lcom/google/android/gms/vision/Tracker;)Lcom/google/android/gms/vision/Tracker;

    invoke-static {v3}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zza(Lcom/google/android/gms/vision/MultiProcessor$zza;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/vision/Tracker;->onNewItem(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzb(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/vision/MultiProcessor$zza;

    invoke-static {v4}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzb(Lcom/google/android/gms/vision/MultiProcessor$zza;)I

    invoke-static {v4}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zzc(Lcom/google/android/gms/vision/MultiProcessor$zza;)I

    move-result v5

    iget v6, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOp:I

    if-lt v5, v6, :cond_0

    invoke-static {v4}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zza(Lcom/google/android/gms/vision/MultiProcessor$zza;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-static {v4}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zza(Lcom/google/android/gms/vision/MultiProcessor$zza;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/vision/Tracker;->onMissing(Lcom/google/android/gms/vision/Detector$Detections;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private zzc(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/vision/Detector$Detections;->getDetectedItems()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/vision/MultiProcessor$zza;

    invoke-static {v3, v1}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zza(Lcom/google/android/gms/vision/MultiProcessor$zza;I)I

    invoke-static {v3}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zza(Lcom/google/android/gms/vision/MultiProcessor$zza;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v3

    invoke-virtual {v3, p1, v4}, Lcom/google/android/gms/vision/Tracker;->onUpdate(Lcom/google/android/gms/vision/Detector$Detections;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public receiveDetections(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/MultiProcessor;->zza(Lcom/google/android/gms/vision/Detector$Detections;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/MultiProcessor;->zzb(Lcom/google/android/gms/vision/Detector$Detections;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/vision/MultiProcessor;->zzc(Lcom/google/android/gms/vision/Detector$Detections;)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/MultiProcessor$zza;

    invoke-static {v1}, Lcom/google/android/gms/vision/MultiProcessor$zza;->zza(Lcom/google/android/gms/vision/MultiProcessor$zza;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/vision/Tracker;->onDone()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/MultiProcessor;->zzbOC:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
