.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/AutocompleteFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/location/places/AutocompleteFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FILTER_ADDRESS:I = 0x2

.field public static final TYPE_FILTER_CITIES:I = 0x5

.field public static final TYPE_FILTER_ESTABLISHMENT:I = 0x22

.field public static final TYPE_FILTER_GEOCODE:I = 0x3ef

.field public static final TYPE_FILTER_NONE:I = 0x0

.field public static final TYPE_FILTER_REGIONS:I = 0x4


# instance fields
.field final zzaiI:I

.field final zzblb:Z

.field final zzblc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final zzbld:Ljava/lang/String;

.field final zzble:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaiI:I

    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzblc:Ljava/util/List;

    invoke-static {p3}, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzl(Ljava/util/Collection;)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzble:I

    iput-object p4, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzbld:Ljava/lang/String;

    iget p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzaiI:I

    const/4 p3, 0x1

    if-ge p1, p3, :cond_0

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzblb:Z

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzblb:Z

    :goto_0
    return-void
.end method

.method private static zzl(Ljava/util/Collection;)I
    .locals 1
    .param p0    # Ljava/util/Collection;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/places/AutocompleteFilter;

    iget v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzble:I

    iget v3, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzble:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzblb:Z

    iget-boolean v3, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzblb:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzbld:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzbld:Ljava/lang/String;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTypeFilter()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzble:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzblb:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzble:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzbld:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "includeQueryPredictions"

    iget-boolean v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzblb:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "typeFilter"

    iget v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzble:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "country"

    iget-object v2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->zzbld:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/zzc;->zza(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;I)V

    return-void
.end method
