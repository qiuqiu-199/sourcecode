.class public Lorg/inaturalist/android/ExploreSearchFilters;
.super Ljava/lang/Object;
.source "ExploreSearchFilters.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DATE_TYPE_ANY:I = 0x0

.field public static final DATE_TYPE_EXACT_DATE:I = 0x1

.field public static final DATE_TYPE_MIN_MAX_DATE:I = 0x2

.field public static final DATE_TYPE_MONTHS:I = 0x3

.field public static final QUALITY_GRADE_CASUAL:Ljava/lang/String; = "casual"

.field public static final QUALITY_GRADE_NEEDS_ID:Ljava/lang/String; = "needs_id"

.field public static final QUALITY_GRADE_RESEARCH:Ljava/lang/String; = "research"


# instance fields
.field public annotationName:Ljava/lang/String;

.field public annotationNameId:Ljava/lang/Integer;

.field public annotationValue:Ljava/lang/String;

.field public annotationValueId:Ljava/lang/Integer;

.field public dateFilterType:I

.field public iconicTaxa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isCurrentLocation:Z

.field public transient mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field public observedOn:Ljava/util/Date;

.field public observedOnMaxDate:Ljava/util/Date;

.field public observedOnMinDate:Ljava/util/Date;

.field public observedOnMonths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public transient place:Lorg/json/JSONObject;

.field private placeJson:Ljava/lang/String;

.field public transient project:Lorg/json/JSONObject;

.field private projectJson:Ljava/lang/String;

.field public qualityGrade:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public transient taxon:Lorg/json/JSONObject;

.field private taxonJson:Ljava/lang/String;

.field public transient user:Lorg/json/JSONObject;

.field private userJson:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->isCurrentLocation:Z

    .line 35
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    .line 36
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    .line 38
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    .line 49
    iput v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 63
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreSearchFilters;->resetToDefault()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->userJson:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->userJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    .line 121
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->projectJson:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->projectJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    .line 122
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->placeJson:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->placeJson:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    .line 123
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxonJson:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxonJson:Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_3
    iput-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    :goto_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->available()I

    move-result v0

    if-lez v0, :cond_4

    .line 129
    new-instance v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    new-instance v2, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readDouble()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    :cond_4
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxonJson:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->placeJson:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->projectJson:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iput-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->userJson:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 108
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 110
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 111
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    .line 112
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeDouble(D)V

    :cond_4
    return-void
.end method


# virtual methods
.method public formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const-string v0, "yyyy-MM-dd"

    .line 196
    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isDirty()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v1, "casual"

    .line 91
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v1, "needs_id"

    .line 92
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v1, "research"

    .line 93
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resetToDefault()V
    .locals 2

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    .line 69
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v1, "research"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v1, "needs_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    .line 73
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    .line 74
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    .line 76
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    .line 77
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    .line 78
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    const/4 v1, 0x0

    .line 81
    iput v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 83
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    .line 84
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    .line 85
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationName:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValue:Ljava/lang/String;

    return-void
.end method

.method public toUrlQueryString()Ljava/lang/String;
    .locals 9

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&iconic_taxa="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->iconicTaxa:Ljava/util/Set;

    const-string v3, ","

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&taxon_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->taxon:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&place_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->place:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_2
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&project_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->project:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 155
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v2, "login"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&user_login="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v3, "login"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 158
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&user_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->user:Lorg/json/JSONObject;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_5
    :goto_0
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&quality_grade="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->qualityGrade:Ljava/util/Set;

    const-string v3, ","

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_6
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    const-string v1, "&swlng=%s&swlat=%s&nelng=%s&nelat=%s"

    const/4 v5, 0x4

    .line 167
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v7, v7, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v7, v7, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 168
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v6, v6, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v6, v6, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 169
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v6, p0, Lorg/inaturalist/android/ExploreSearchFilters;->mapBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iget-object v6, v6, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v2

    .line 167
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_7
    iget v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&month="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMonths:Ljava/util/Set;

    const-string v3, ","

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 175
    :cond_8
    iget v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    if-eqz v1, :cond_9

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&observed_on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ExploreSearchFilters;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 177
    :cond_9
    iget v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    if-ne v1, v3, :cond_b

    .line 178
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&d1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ExploreSearchFilters;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_a
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    if-eqz v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&d2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    invoke-virtual {p0, v2}, Lorg/inaturalist/android/ExploreSearchFilters;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    :cond_b
    :goto_1
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&term_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationNameId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&term_value_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/inaturalist/android/ExploreSearchFilters;->annotationValueId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 192
    :cond_d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
