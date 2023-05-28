.class Lorg/inaturalist/android/ExploreFiltersActivity$9;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ExploreFiltersActivity;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 315
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 319
    :cond_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 320
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 323
    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v2}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$500(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 324
    :goto_0
    iget-object v4, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$600(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;

    move-result-object v4

    if-ne p1, v4, :cond_3

    .line 325
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v1, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    .line 326
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 328
    :cond_3
    :goto_1
    iget-object v4, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {v4}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$700(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;

    move-result-object v4

    if-ne p1, v4, :cond_4

    .line 329
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v2, v1, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    .line 330
    iget-object v1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object v1, v1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iget-object v3, v1, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    .line 331
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    :cond_4
    const-string v4, "date"

    if-eqz v2, :cond_5

    goto :goto_2

    .line 334
    :cond_5
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    :goto_2
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    if-eqz v3, :cond_6

    const-string v2, "min_date"

    .line 335
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_6
    if-eqz v1, :cond_7

    const-string v2, "max_date"

    .line 336
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 338
    :cond_7
    new-instance v1, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;

    invoke-direct {v1}, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;-><init>()V

    .line 339
    invoke-virtual {v1, p2}, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 340
    new-instance p2, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;

    invoke-direct {p2, p0, p1}, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;-><init>(Lorg/inaturalist/android/ExploreFiltersActivity$9;Landroid/view/View;)V

    invoke-virtual {v1, p2}, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V

    .line 363
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-virtual {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    const-string p2, "datePicker"

    invoke-virtual {v1, p1, p2}, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0
.end method
