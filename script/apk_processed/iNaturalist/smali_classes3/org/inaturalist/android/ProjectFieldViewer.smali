.class public Lorg/inaturalist/android/ProjectFieldViewer;
.super Ljava/lang/Object;
.source "ProjectFieldViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;,
        Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;,
        Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;
    }
.end annotation


# static fields
.field public static final PROJECT_FIELD_TAXON_SEARCH_REQUEST_CODE:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "ProjectFieldViewer"


# instance fields
.field private mContext:Landroid/support/v7/app/AppCompatActivity;

.field private mDate:Landroid/widget/TextView;

.field private mDateContainer:Landroid/widget/RelativeLayout;

.field private mEditText:Landroid/widget/EditText;

.field private mField:Lorg/inaturalist/android/ProjectField;

.field private mFieldDescription:Landroid/widget/TextView;

.field private mFieldName:Landroid/widget/TextView;

.field private mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

.field private mFocusedListener:Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;

.field private mIdName:Landroid/widget/TextView;

.field private mIdTaxonName:Landroid/widget/TextView;

.field private final mIsConfirmation:Z

.field private mIsFocusing:Z

.field private mSetDate:Landroid/widget/ImageView;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTaxonContainer:Landroid/widget/RelativeLayout;

.field private mTaxonId:I

.field private mTaxonPic:Landroid/widget/ImageView;

.field private mTaxonReceiver:Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;Lorg/inaturalist/android/ProjectField;Lorg/inaturalist/android/ProjectFieldValue;Z)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    .line 167
    iput-object p2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    .line 168
    iput-object p3, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    .line 169
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    .line 170
    iput-boolean p4, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIsConfirmation:Z

    .line 172
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    if-nez p1, :cond_0

    .line 173
    new-instance p1, Lorg/inaturalist/android/ProjectFieldValue;

    invoke-direct {p1}, Lorg/inaturalist/android/ProjectFieldValue;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    .line 176
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 177
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    const-string p2, ""

    iput-object p2, p1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ProjectFieldViewer;)Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonReceiver:Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/support/v7/app/AppCompatActivity;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ProjectFieldViewer;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectFieldViewer;->showDateTimeDialog()V

    return-void
.end method

.method static synthetic access$1200(Lorg/inaturalist/android/ProjectFieldViewer;)Lorg/inaturalist/android/ProjectField;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    return-object p0
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ProjectFieldViewer;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    return p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonPic:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdTaxonName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/ProjectFieldViewer;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectFieldViewer;->getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ProjectFieldViewer;)Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFocusedListener:Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/ProjectFieldViewer;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIsFocusing:Z

    return p0
.end method

.method static synthetic access$802(Lorg/inaturalist/android/ProjectFieldViewer;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIsFocusing:Z

    return p1
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ProjectFieldViewer;)Landroid/widget/TextView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    return-object p0
.end method

.method private formatDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 527
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectFieldViewer;->valueToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 528
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatDateTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 533
    invoke-direct {p0, p1}, Lorg/inaturalist/android/ProjectFieldViewer;->valueToDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 534
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getProjectFields(Landroid/content/Context;Ljava/util/List;ILorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;",
            ")V"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 555
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lorg/inaturalist/android/ProjectField;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lorg/inaturalist/android/ProjectField;->PROJECTION:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(project_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "_id DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 560
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 562
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_0

    .line 563
    new-instance v3, Lorg/inaturalist/android/ProjectField;

    invoke-direct {v3, v2}, Lorg/inaturalist/android/ProjectField;-><init>(Landroid/database/Cursor;)V

    .line 564
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 567
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 573
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lorg/inaturalist/android/ProjectFieldValue;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lorg/inaturalist/android/ProjectFieldValue;->PROJECTION:[Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "(observation_id = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 577
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 578
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_2

    .line 579
    new-instance p1, Lorg/inaturalist/android/ProjectFieldValue;

    invoke-direct {p1, p0}, Lorg/inaturalist/android/ProjectFieldValue;-><init>(Landroid/database/Cursor;)V

    .line 580
    iget-object p2, p1, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 583
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 585
    invoke-interface {p3, v0, v1}, Lorg/inaturalist/android/ProjectFieldViewer$ProjectFieldsResults;->onProjectFieldsResults(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method

.method private getTaxonName(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6

    .line 123
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v0}, Lorg/inaturalist/android/INaturalistApp;->getInaturalistNetworkMember()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inat_lexicon_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/inaturalist/android/INaturalistApp;->getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "taxon_names"

    .line 126
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 127
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 128
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "lexicon"

    .line 129
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v0, "name"

    .line 132
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 137
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    if-nez v1, :cond_3

    :try_start_1
    const-string v0, "unique_name"

    .line 143
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-string v0, "default_name"

    .line 148
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "name"

    .line 149
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    const-string v0, "common_name"

    .line 152
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p1, "name"

    .line 154
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const-string v0, "name"

    .line 156
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_2
    return-object v1
.end method

.method private showDateTimeDialog()V
    .locals 6

    .line 431
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 433
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d003d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0006

    .line 435
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;

    const v3, 0x7f0a000d

    .line 438
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lorg/inaturalist/android/ProjectFieldViewer$6;

    invoke-direct {v4, p0, v2, v0}, Lorg/inaturalist/android/ProjectFieldViewer$6;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;Lcom/ptashek/widgets/datetimepicker/DateTimePicker;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a0002

    .line 451
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lorg/inaturalist/android/ProjectFieldViewer$7;

    invoke-direct {v4, p0, v0}, Lorg/inaturalist/android/ProjectFieldViewer$7;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0a000a

    .line 458
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lorg/inaturalist/android/ProjectFieldViewer$8;

    invoke-direct {v4, p0, v2}, Lorg/inaturalist/android/ProjectFieldViewer$8;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;Lcom/ptashek/widgets/datetimepicker/DateTimePicker;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    .line 466
    invoke-virtual {v2, v3}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->setIs24HourView(Z)V

    .line 468
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 470
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 472
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 474
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v4

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->updateDate(III)V

    .line 478
    invoke-virtual {v1}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->updateTime(II)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 480
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 486
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static sortProjectFields(ILjava/util/ArrayList;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/ProjectField;",
            ">;"
        }
    .end annotation

    .line 591
    new-instance v0, Lorg/inaturalist/android/ProjectFieldViewer$9;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectFieldViewer$9;-><init>(I)V

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    .line 599
    new-instance p0, Lorg/inaturalist/android/ProjectFieldViewer$10;

    invoke-direct {p0}, Lorg/inaturalist/android/ProjectFieldViewer$10;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method

.method private valueToDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 511
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 514
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 520
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 522
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 516
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private valueToDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 490
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Z"

    const-string v2, "+00:00"

    .line 491
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 493
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x16

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x17

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    :try_start_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 507
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 502
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    return-object v1

    :catch_1
    move-exception p1

    .line 495
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public getField()Lorg/inaturalist/android/ProjectField;
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .line 186
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v1, "numeric"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    .line 193
    :cond_3
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    return-object v0

    .line 197
    :cond_5
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v2, "time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 198
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    return-object v0

    .line 201
    :cond_7
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v2, "datetime"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    .line 205
    :cond_8
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 208
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x16

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 212
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    return-object v1

    .line 215
    :cond_9
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v2, "taxon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 216
    iget v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    return-object v1

    .line 217
    :cond_a
    iget v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    return-object v1
.end method

.method public getView()Landroid/view/View;
    .locals 7

    .line 282
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIsConfirmation:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0d00c5

    goto :goto_0

    :cond_0
    const v1, 0x7f0d00c4

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    new-instance v1, Landroid/widget/TableRow$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v4, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a0133

    .line 285
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldName:Landroid/widget/TextView;

    const v1, 0x7f0a0132

    .line 286
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldDescription:Landroid/widget/TextView;

    const v1, 0x7f0a0116

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    .line 288
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    new-instance v3, Lorg/inaturalist/android/ProjectFieldViewer$1;

    invoke-direct {v3, p0}, Lorg/inaturalist/android/ProjectFieldViewer$1;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v1, 0x7f0a0354

    .line 303
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0a00e9

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDateContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a0326

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSetDate:Landroid/widget/ImageView;

    const v1, 0x7f0a00e7

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    const v1, 0x7f0a0381

    .line 307
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a038d

    .line 308
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonPic:Landroid/widget/ImageView;

    const v1, 0x7f0a0177

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdName:Landroid/widget/TextView;

    const v1, 0x7f0a017e

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdTaxonName:Landroid/widget/TextView;

    .line 311
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdTaxonName:Landroid/widget/TextView;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 313
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldName:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v3, v3, Lorg/inaturalist/android/ProjectField;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v3, v3, Lorg/inaturalist/android/ProjectField;->description:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->description:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 317
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldDescription:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    :goto_2
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 323
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldName:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 325
    iget-boolean v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIsConfirmation:Z

    if-eqz v1, :cond_3

    .line 326
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " *"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_3
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v5, "text"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 331
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 332
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->allowed_values:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 333
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    const v5, 0x1090008

    const v6, 0x1020014

    invoke-direct {v2, v3, v5, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 334
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 335
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 337
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinnerAdapter:Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_f

    .line 339
    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 341
    :cond_4
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v5, "text"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 342
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 343
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 344
    :cond_5
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v5, "numeric"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 345
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto/16 :goto_7

    .line 348
    :cond_6
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v5, "date"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 349
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDateContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 351
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 352
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/inaturalist/android/ProjectFieldViewer;->formatDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 354
    :cond_7
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_3
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDateContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/inaturalist/android/ProjectFieldViewer$2;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectFieldViewer$2;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 365
    :cond_8
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v5, "time"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 366
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDateContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mSetDate:Landroid/widget/ImageView;

    const v2, 0x7f080146

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDateContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/inaturalist/android/ProjectFieldViewer$3;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectFieldViewer$3;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 379
    :cond_9
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v5, "datetime"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 380
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDateContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 382
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 383
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v2, v2, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/inaturalist/android/ProjectFieldViewer;->formatDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 385
    :cond_a
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDate:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    :goto_4
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mDateContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/inaturalist/android/ProjectFieldViewer$4;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectFieldViewer$4;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_7

    .line 394
    :cond_b
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v5, "taxon"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 395
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 397
    iget v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    if-ne v1, v4, :cond_d

    .line 398
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, -0x1

    goto :goto_5

    :cond_c
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFieldValue:Lorg/inaturalist/android/ProjectFieldValue;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_5
    iput v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    .line 401
    :cond_d
    iget v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    if-eq v1, v4, :cond_e

    .line 403
    new-instance v1, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;

    invoke-direct {v1, p0, v2}, Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;Lorg/inaturalist/android/ProjectFieldViewer$1;)V

    iput-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonReceiver:Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;

    .line 404
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "action_get_taxon_result"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "ProjectFieldViewer"

    const-string v4, "Registering ACTION_GET_TAXON_RESULT"

    .line 405
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v3, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonReceiver:Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;

    iget-object v4, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v3, v1, v4}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 408
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_TAXON:Ljava/lang/String;

    iget-object v4, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    const-class v5, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "taxon_id"

    .line 409
    iget v3, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    iget-object v2, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6

    .line 412
    :cond_e
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdTaxonName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    :goto_6
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonContainer:Landroid/widget/RelativeLayout;

    new-instance v2, Lorg/inaturalist/android/ProjectFieldViewer$5;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/ProjectFieldViewer$5;-><init>(Lorg/inaturalist/android/ProjectFieldViewer;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    :goto_7
    return-object v0
.end method

.method public isValid()Ljava/lang/Boolean;
    .locals 3

    .line 225
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectFieldViewer;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 233
    :cond_1
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v0, v0, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v2, "numeric"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 243
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onTaxonSearchResult(Landroid/content/Intent;)V
    .locals 6

    const-string v0, "taxon_id"

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "taxon_name"

    .line 248
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id_name"

    .line 249
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id_url"

    .line 250
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "field_id"

    .line 251
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 253
    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object v1, v1, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mField:Lorg/inaturalist/android/ProjectField;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectField;->data_type:Ljava/lang/String;

    const-string v1, "taxon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    iput v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonId:I

    .line 259
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonPic:Landroid/widget/ImageView;

    invoke-static {p1, v4}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 260
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdName:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdTaxonName:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIdTaxonName:Landroid/widget/TextView;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setFocus()V
    .locals 2

    .line 266
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mIsFocusing:Z

    .line 268
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 269
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setOnFocusedListener(Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mFocusedListener:Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;

    return-void
.end method

.method public unregisterReceivers()V
    .locals 2

    .line 75
    iget-object v0, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mTaxonReceiver:Lorg/inaturalist/android/ProjectFieldViewer$TaxonReceiver;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectFieldViewer;->mContext:Landroid/support/v7/app/AppCompatActivity;

    invoke-static {v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    return-void
.end method
