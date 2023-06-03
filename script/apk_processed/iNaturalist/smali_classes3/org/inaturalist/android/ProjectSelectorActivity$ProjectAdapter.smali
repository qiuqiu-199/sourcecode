.class public Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ProjectSelectorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProjectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/json/JSONObject;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/widget/Filter;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/inaturalist/android/ProjectSelectorActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/ProjectSelectorActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 386
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    const v0, 0x7f0d00d1

    .line 387
    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 389
    iput-object p3, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mItems:Ljava/util/List;

    .line 390
    new-instance p3, Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mOriginalItems:Ljava/util/List;

    .line 391
    iput-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mContext:Landroid/content/Context;

    .line 393
    new-instance p2, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;

    invoke-direct {p2, p0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$1;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Lorg/inaturalist/android/ProjectSelectorActivity;)V

    iput-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mFilter:Landroid/widget/Filter;

    return-void
.end method

.method static synthetic access$700(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;)Ljava/util/List;
    .locals 0

    .line 379
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mOriginalItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$802(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 379
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mItems:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 428
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 438
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 379
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->getItem(I)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Lorg/json/JSONObject;
    .locals 1

    .line 433
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .line 443
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 444
    new-instance v0, Lorg/inaturalist/android/BetterJSONObject;

    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;-><init>(Lorg/json/JSONObject;)V

    const-string v1, "is_header"

    .line 445
    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string v1, "is_header"

    invoke-virtual {v0, v1}, Lorg/inaturalist/android/BetterJSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "project_type"

    .line 446
    invoke-virtual {v0, v4}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "collection"

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "umbrella"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_3

    const v5, 0x7f0d00c6

    .line 451
    invoke-virtual {p2, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_3

    .line 453
    :cond_3
    iget-object v5, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean v5, v5, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz v5, :cond_4

    const v5, 0x7f0d00d0

    goto :goto_2

    :cond_4
    const v5, 0x7f0d00d1

    :goto_2
    invoke-virtual {p2, v5, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 456
    :goto_3
    iget-object p3, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p3}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$900(Lorg/inaturalist/android/ProjectSelectorActivity;)V

    if-eqz v1, :cond_5

    const p3, 0x7f0a0156

    goto :goto_4

    :cond_5
    const p3, 0x7f0a02bb

    .line 458
    :goto_4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const-string v5, "title"

    .line 459
    invoke-virtual {v0, v5}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_6

    return-object p2

    :cond_6
    const v1, 0x7f0a02b6

    .line 466
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v6, "description"

    .line 467
    invoke-virtual {v0, v6}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 468
    iget-object v7, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean v7, v7, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-nez v7, :cond_7

    .line 470
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    const v7, 0x7f0a02bd

    .line 472
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const-string v8, "icon_url"

    .line 473
    invoke-virtual {v0, v8}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0a02c0

    const/16 v10, 0x8

    if-eqz v8, :cond_9

    .line 475
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 476
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v11, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean v11, v11, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz v11, :cond_8

    .line 478
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_8
    invoke-static {v7, v8}, Lcom/koushikdutta/urlimageviewhelper/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_5

    .line 482
    :cond_9
    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    iget-object v7, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean v7, v7, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz v7, :cond_a

    .line 484
    invoke-virtual {p2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :cond_a
    :goto_5
    iget-object v7, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean v7, v7, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz v7, :cond_c

    .line 489
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    const v7, 0x7f0a02be

    .line 490
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    new-instance v8, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$2;

    invoke-direct {v8, p0, v5, v6}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$2;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_b
    const v5, 0x7f0a02bf

    .line 498
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_6
    const v5, 0x7f0a0011

    .line 502
    invoke-virtual {p2, v5, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string v5, "id"

    .line 504
    invoke-virtual {v0, v5}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v5, 0x7f0a03c1

    const v6, 0x7f0a02c9

    const v7, 0x7f0a02c3

    if-eqz v4, :cond_e

    .line 507
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity;->mUmbrellaProjects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    .line 509
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v10}, Landroid/view/View;->setVisibility(I)V

    .line 510
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v10}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_d

    .line 514
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 517
    :cond_d
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    :cond_e
    const v4, 0x7f0a0010

    .line 521
    iget-object v8, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v8, v8, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p2, v4, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 522
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 523
    iget-object v4, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v4, v4, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const v5, 0x7f0a02c2

    if-eqz v4, :cond_13

    .line 525
    iget-object v4, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean v4, v4, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz v4, :cond_12

    .line 526
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v3}, Landroid/view/View;->setVisibility(I)V

    .line 527
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v10}, Landroid/view/View;->setVisibility(I)V

    const-string p3, "#f1f6e8"

    .line 528
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundColor(I)V

    const p3, 0x7f0a02b7

    .line 531
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TableLayout;

    .line 532
    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$500(Lorg/inaturalist/android/ProjectSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/inaturalist/android/ProjectFieldViewer;->sortProjectFields(ILjava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    .line 534
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 535
    iget-object v5, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {v5}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1100(Lorg/inaturalist/android/ProjectSelectorActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_f

    .line 538
    invoke-virtual {p3, v3}, Landroid/widget/TableLayout;->setVisibility(I)V

    const v5, 0x7f0a02c8

    .line 540
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    new-instance v6, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;

    invoke-direct {v6, p0, p2, p1, v0}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$3;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Landroid/view/View;II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 550
    :cond_f
    invoke-virtual {p3, v10}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 553
    :goto_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/ProjectField;

    .line 554
    iget-object v5, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-object v5, v5, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    iget-object v6, v1, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/inaturalist/android/ProjectFieldValue;

    .line 555
    new-instance v6, Lorg/inaturalist/android/ProjectFieldViewer;

    iget-object v7, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-direct {v6, v7, v1, v5, v2}, Lorg/inaturalist/android/ProjectFieldViewer;-><init>(Landroid/support/v7/app/AppCompatActivity;Lorg/inaturalist/android/ProjectField;Lorg/inaturalist/android/ProjectFieldValue;Z)V

    .line 557
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    iget-object v5, v1, Lorg/inaturalist/android/ProjectField;->is_required:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    const v5, 0x7f0a019f

    .line 560
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 563
    :cond_10
    new-instance v5, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;

    invoke-direct {v5, p0, v1, v0}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter$4;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;Lorg/inaturalist/android/ProjectField;I)V

    invoke-virtual {v6, v5}, Lorg/inaturalist/android/ProjectFieldViewer;->setOnFocusedListener(Lorg/inaturalist/android/ProjectFieldViewer$FocusedListener;)V

    .line 575
    invoke-virtual {v6}, Lorg/inaturalist/android/ProjectFieldViewer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_8

    .line 578
    :cond_11
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->access$1600(Lorg/inaturalist/android/ProjectSelectorActivity;)V

    goto :goto_9

    .line 581
    :cond_12
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x7f080133

    .line 582
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 584
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_9

    .line 588
    :cond_13
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->this$0:Lorg/inaturalist/android/ProjectSelectorActivity;

    iget-boolean p1, p1, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz p1, :cond_14

    .line 589
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 590
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "#ffffff"

    .line 591
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_9

    .line 593
    :cond_14
    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v0, 0x106000d

    .line 594
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 596
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_9
    return-object p2
.end method
