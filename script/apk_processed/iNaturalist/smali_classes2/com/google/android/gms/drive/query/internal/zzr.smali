.class public Lcom/google/android/gms/drive/query/internal/zzr;
.super Lcom/google/android/gms/drive/query/internal/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/drive/query/internal/zzr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzaQd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;"
        }
    .end annotation
.end field

.field final zzaQj:Lcom/google/android/gms/drive/query/internal/zzx;

.field final zzaQy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;"
        }
    .end annotation
.end field

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/zzr;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/drive/query/internal/FilterHolder;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQj:Lcom/google/android/gms/drive/query/internal/zzx;

    iput-object p3, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQy:Ljava/util/List;

    return-void
.end method

.method public varargs constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQj:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance p1, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/2addr v1, v0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQy:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQy:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v1, p2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/2addr v1, v0

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQd:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQd:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length p1, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object v0, p3, p2

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQy:Ljava/util/List;

    new-instance v2, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v2, v0}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQd:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/query/internal/zzx;",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/gms/drive/query/Filter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQj:Lcom/google/android/gms/drive/query/internal/zzx;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQd:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQy:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/drive/query/Filter;

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQd:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQy:Ljava/util/List;

    new-instance v1, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {v1, p2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;-><init>(Lcom/google/android/gms/drive/query/Filter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/zzs;->zza(Lcom/google/android/gms/drive/query/internal/zzr;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/zzj<",
            "TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQy:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-virtual {v2}, Lcom/google/android/gms/drive/query/internal/FilterHolder;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/google/android/gms/drive/query/Filter;->zza(Lcom/google/android/gms/drive/query/internal/zzj;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/drive/query/internal/zzr;->zzaQj:Lcom/google/android/gms/drive/query/internal/zzx;

    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/drive/query/internal/zzj;->zzb(Lcom/google/android/gms/drive/query/internal/zzx;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
