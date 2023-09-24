.class Lorg/inaturalist/android/AnnotationsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AnnotationsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mAttributeValuesAdded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mIsAttributeExpanded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAnnonationsActions:Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

.field private mTaxon:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 6

    const v0, 0x1090003

    .line 112
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 114
    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mContext:Landroid/content/Context;

    .line 115
    iput-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mOnAnnonationsActions:Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

    .line 116
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 117
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    iget-object p2, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 118
    iput-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mTaxon:Lorg/json/JSONObject;

    .line 120
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributeValuesAdded:Ljava/util/HashMap;

    :try_start_0
    const-string p1, "ancestor_ids"

    .line 123
    invoke-virtual {p3, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "id"

    .line 124
    invoke-virtual {p3, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 127
    :goto_0
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p3, v0, :cond_3

    .line 128
    invoke-virtual {p4, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "values"

    .line 129
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 130
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 132
    invoke-direct {p0, v0, p1}, Lorg/inaturalist/android/AnnotationsAdapter;->shouldExclude(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v3

    const-string v4, "exclude"

    .line 135
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 139
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 140
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 142
    invoke-direct {p0, v4, p1}, Lorg/inaturalist/android/AnnotationsAdapter;->shouldExclude(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "values"

    .line 151
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 157
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 158
    :goto_3
    invoke-virtual {p5}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p1, p3, :cond_8

    .line 160
    invoke-virtual {p5, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "controlled_attribute_id"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 161
    :goto_4
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 162
    invoke-virtual {p4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "exclude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_5

    .line 164
    :cond_4
    invoke-virtual {p4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, p3, :cond_6

    .line 165
    iget-object v1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-virtual {p4, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p5, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributeValuesAdded:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 168
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributeValuesAdded:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributeValuesAdded:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    .line 172
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p5, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controlled_value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    .line 183
    :cond_8
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {p1}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    .line 184
    :goto_7
    invoke-virtual {p4}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p1, p3, :cond_c

    .line 185
    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string p5, "exclude"

    invoke-virtual {p3, p5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_8

    .line 187
    :cond_9
    iget-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributeValuesAdded:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p5

    const-string v0, "id"

    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    const/4 p5, 0x0

    if-nez p3, :cond_a

    .line 188
    iget-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    check-cast p5, Lorg/json/JSONObject;

    invoke-direct {v0, v1, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 189
    :cond_a
    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "multivalued"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 190
    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "values"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result p3

    .line 191
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributeValuesAdded:Ljava/util/HashMap;

    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ge v0, p3, :cond_b

    .line 193
    iget-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p4, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    check-cast p5, Lorg/json/JSONObject;

    invoke-direct {v0, v1, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_8
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_7

    .line 201
    :cond_c
    iget-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    new-instance p3, Lorg/inaturalist/android/AnnotationsAdapter$1;

    invoke-direct {p3, p0}, Lorg/inaturalist/android/AnnotationsAdapter$1;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;)V

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    iget-object p3, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3, p2}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mIsAttributeExpanded:Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p1

    .line 216
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_9
    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/AnnotationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mIsAttributeExpanded:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mOnAnnonationsActions:Lorg/inaturalist/android/AnnotationsAdapter$OnAnnotationActions;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/AnnotationsAdapter;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/AnnotationsAdapter;)Landroid/content/Context;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const-string v0, "%s_%s"

    const/4 v1, 0x2

    .line 508
    new-array v1, v1, [Ljava/lang/Object;

    if-eqz p2, :cond_0

    const-string p2, "annotation_value"

    goto :goto_0

    :cond_0
    const-string p2, "annotation_name"

    :goto_0
    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    .line 509
    invoke-static {p1}, Lorg/inaturalist/android/AnnotationsAdapter;->toSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 508
    invoke-virtual {p0, p2}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByNameOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method private shouldExclude(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 8

    const-string v0, "taxon_ids"

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const-string v0, "taxon_ids"

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 72
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    const/4 v5, 0x0

    .line 73
    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 74
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    if-nez v4, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_9

    const-string v3, "excepted_taxon_ids"

    .line 87
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "excepted_taxon_ids"

    .line 90
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 92
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    const/4 v5, 0x0

    .line 93
    :goto_6
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_6

    .line 94
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    invoke-virtual {p2, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v7

    if-ne v6, v7, :cond_5

    const/4 v4, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    :goto_8
    if-eqz v4, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method private static toSnakeCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 527
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v2, 0x5f

    .line 528
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 530
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 222
    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 24

    move-object/from16 v8, p0

    move/from16 v0, p1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 229
    iget-object v2, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d001e

    move-object/from16 v4, p3

    .line 230
    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p2

    .line 235
    :goto_0
    iget-object v2, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 236
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lorg/json/JSONObject;

    .line 237
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lorg/json/JSONObject;

    const v4, 0x7f0a0060

    .line 241
    :try_start_0
    invoke-virtual {v9, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a03d2

    .line 242
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a0061

    .line 243
    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a031f

    .line 244
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroid/widget/TextView;

    const v7, 0x7f0a00f2

    .line 245
    invoke-virtual {v9, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v11, 0x7f0a0047

    .line 246
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0a0101

    .line 247
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v13, 0x7f0a0048

    .line 248
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    const v14, 0x7f0a0102

    .line 249
    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    const v15, 0x7f0a0046

    .line 250
    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup;

    const v1, 0x7f0a0100

    .line 251
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v16, v14

    const v14, 0x7f0a0049

    .line 252
    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v17, v13

    const v13, 0x7f0a0103

    .line 253
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v18, v1

    const v1, 0x7f0a01b7

    .line 254
    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v19, v15

    const v15, 0x7f0a0126

    .line 255
    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v20, v13

    const v13, 0x7f0a012a

    .line 256
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v21, v9

    .line 258
    :try_start_1
    iget-object v9, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mIsAttributeExpanded:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object/from16 v22, v14

    const/16 v14, 0x8

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    .line 259
    invoke-virtual {v13, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v9, 0x7f080078

    .line 260
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 262
    :cond_1
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v9, 0x7f080074

    .line 263
    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    :goto_1
    new-instance v9, Lorg/inaturalist/android/AnnotationsAdapter$2;

    invoke-direct {v9, v8, v0, v13, v15}, Lorg/inaturalist/android/AnnotationsAdapter$2;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;ILandroid/view/ViewGroup;Landroid/widget/ImageView;)V

    invoke-virtual {v15, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v9, "label"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x0

    invoke-static {v0, v9, v13}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v1, v14}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x1

    if-nez v2, :cond_5

    .line 286
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    invoke-virtual {v6, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    iget-object v2, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mAttributeValuesAdded:Ljava/util/HashMap;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_2

    .line 296
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 297
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_2
    const-string v9, "values"

    .line 300
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_4

    .line 301
    iget-object v9, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v11, "values"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v11, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "label"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v4}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 302
    invoke-interface {v2, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 303
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "values"

    .line 304
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v11, "id"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const-string v2, "id"

    .line 309
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 312
    new-instance v9, Lorg/inaturalist/android/AnnotationsAdapter$3;

    move-object v13, v1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v3, v5

    move-object v4, v0

    move-object v5, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v7}, Lorg/inaturalist/android/AnnotationsAdapter$3;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;Landroid/view/View;I)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_a

    :cond_5
    move-object v13, v1

    const/4 v0, 0x0

    .line 332
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, "user"

    .line 337
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uuid"

    .line 338
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "icon_url"

    .line 340
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const v9, 0x7f080131

    if-eqz v3, :cond_6

    const-string v3, "icon_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "icon_url"

    .line 341
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v10, Lorg/inaturalist/android/AnnotationsAdapter$4;

    invoke-direct {v10, v8}, Lorg/inaturalist/android/AnnotationsAdapter$4;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;)V

    invoke-static {v5, v3, v9, v10}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;ILcom/koushikdutta/urlimageviewhelper/UrlImageViewCallback;)V

    goto :goto_3

    .line 353
    :cond_6
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    :goto_3
    new-instance v3, Lorg/inaturalist/android/AnnotationsAdapter$5;

    invoke-direct {v3, v8, v0}, Lorg/inaturalist/android/AnnotationsAdapter$5;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;Lorg/json/JSONObject;)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v3, "login"

    .line 366
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 368
    iget-object v3, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v3}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 370
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 372
    :cond_7
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    :goto_4
    iget-object v0, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    const-string v3, "controlled_value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v5, "label"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lorg/inaturalist/android/AnnotationsAdapter;->getAnnotationTranslatedValue(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    new-instance v0, Lorg/inaturalist/android/AnnotationsAdapter$6;

    invoke-direct {v0, v8, v13, v7, v1}, Lorg/inaturalist/android/AnnotationsAdapter$6;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "#C3C3C3"

    .line 389
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string v0, "#C3C3C3"

    .line 390
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string v0, "#C3C3C3"

    .line 391
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v3, v22

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "#C3C3C3"

    .line 392
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v5, v20

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 393
    invoke-virtual {v3, v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 394
    invoke-virtual {v5, v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 396
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v9, v19

    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 397
    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, v6}, Ljava/lang/Boolean;-><init>(Z)V

    move-object/from16 v6, v18

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    const-string v7, "votes"

    .line 399
    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/16 v18, 0x0

    .line 401
    :goto_5
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v7, v14, :cond_c

    .line 402
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v0, "user"

    .line 403
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "vote_flag"

    .line 405
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v18, v18, 0x1

    .line 411
    :goto_6
    iget-object v4, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->currentUserLogin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v2

    const-string v2, "login"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "vote_flag"

    .line 412
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "#808080"

    .line 414
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string v0, "#808080"

    .line 415
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-virtual {v3, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 417
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_7

    :cond_9
    const-string v0, "#808080"

    .line 420
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string v0, "#808080"

    .line 421
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 422
    invoke-virtual {v5, v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 423
    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    move-object/from16 v23, v2

    :cond_b
    const/4 v2, 0x0

    add-int/lit8 v7, v7, 0x1

    move-object v0, v2

    move-object/from16 v2, v23

    const/4 v4, 0x1

    goto/16 :goto_5

    :cond_c
    :goto_7
    move/from16 v0, v18

    .line 430
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 431
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-ne v10, v0, :cond_d

    move-object/from16 v7, v17

    const/16 v11, 0x8

    .line 434
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v14, v16

    .line 435
    invoke-virtual {v14, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v7, 0x3f800000    # 1.0f

    .line 436
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 437
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_8

    :cond_d
    move-object/from16 v14, v16

    move-object/from16 v7, v17

    const/high16 v12, 0x40400000    # 3.0f

    if-le v10, v0, :cond_e

    const/4 v11, 0x0

    .line 439
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v7, 0x8

    .line 440
    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v7, 0x40000000    # 2.0f

    .line 442
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_8

    :cond_e
    const/16 v11, 0x8

    .line 444
    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v7, 0x0

    .line 445
    invoke-virtual {v14, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 v7, 0x40000000    # 2.0f

    .line 446
    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 447
    iput v12, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 450
    :goto_8
    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x2

    if-lez v10, :cond_f

    const-string v4, "%s (%d)"

    .line 454
    new-array v7, v2, [Ljava/lang/Object;

    iget-object v11, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mContext:Landroid/content/Context;

    const v12, 0x7f100034

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v7, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v7, v11

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    if-lez v0, :cond_10

    const-string v3, "%s (%d)"

    .line 457
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f100133

    invoke-virtual {v4, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v7, 0x0

    aput-object v4, v2, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    :cond_10
    new-instance v0, Lorg/inaturalist/android/AnnotationsAdapter$7;

    invoke-direct {v0, v8, v13, v9, v1}, Lorg/inaturalist/android/AnnotationsAdapter$7;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 475
    new-instance v0, Lorg/inaturalist/android/AnnotationsAdapter$8;

    invoke-direct {v0, v8, v13, v6, v1}, Lorg/inaturalist/android/AnnotationsAdapter$8;-><init>(Lorg/inaturalist/android/AnnotationsAdapter;Landroid/view/View;Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v0, v8, Lorg/inaturalist/android/AnnotationsAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x8

    .line 491
    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v21, v9

    .line 497
    :goto_9
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_11
    :goto_a
    return-object v21
.end method
