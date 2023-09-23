.class Lorg/inaturalist/android/ExploreFiltersActivity$9$1;
.super Ljava/lang/Object;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ExploreFiltersActivity$9;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ExploreFiltersActivity$9;Landroid/view/View;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iput-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 343
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 344
    invoke-virtual {p1, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 345
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 348
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->val$view:Landroid/view/View;

    iget-object p3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p3, p3, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p3}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$500(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;

    move-result-object p3

    if-ne p2, p3, :cond_0

    .line 349
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOn:Ljava/util/Date;

    .line 350
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    const/4 p2, 0x1

    iput p2, p1, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    goto :goto_0

    .line 351
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->val$view:Landroid/view/View;

    iget-object p3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p3, p3, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p3}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$600(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;

    move-result-object p3

    const/4 p4, 0x2

    if-ne p2, p3, :cond_1

    .line 352
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMinDate:Ljava/util/Date;

    .line 353
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput p4, p1, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    goto :goto_0

    .line 354
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->val$view:Landroid/view/View;

    iget-object p3, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p3, p3, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p3}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$700(Lorg/inaturalist/android/ExploreFiltersActivity;)Landroid/widget/Spinner;

    move-result-object p3

    if-ne p2, p3, :cond_2

    .line 355
    iget-object p2, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p2, p2, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput-object p1, p2, Lorg/inaturalist/android/ExploreSearchFilters;->observedOnMaxDate:Ljava/util/Date;

    .line 356
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity;->mSearchFilters:Lorg/inaturalist/android/ExploreSearchFilters;

    iput p4, p1, Lorg/inaturalist/android/ExploreSearchFilters;->dateFilterType:I

    .line 359
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$9$1;->this$1:Lorg/inaturalist/android/ExploreFiltersActivity$9;

    iget-object p1, p1, Lorg/inaturalist/android/ExploreFiltersActivity$9;->this$0:Lorg/inaturalist/android/ExploreFiltersActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ExploreFiltersActivity;->access$100(Lorg/inaturalist/android/ExploreFiltersActivity;)V

    return-void
.end method
