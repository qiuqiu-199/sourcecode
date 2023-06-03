.class public Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "ExploreFiltersActivity.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ExploreFiltersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatePickerFragment"
.end annotation


# instance fields
.field private mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 820
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 822
    iput-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 833
    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 835
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 836
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "date"

    .line 838
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    const-string v1, "min_date"

    .line 839
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    const-string v2, "max_date"

    .line 840
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    move-object v9, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v9

    .line 844
    :goto_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 845
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    .line 846
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 p1, 0x2

    .line 847
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 p1, 0x5

    .line 848
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 851
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    if-eqz v0, :cond_1

    .line 852
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/DatePicker;->setMinDate(J)V

    :cond_1
    if-eqz v1, :cond_2

    .line 853
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :cond_2
    return-object p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    .line 859
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    :cond_0
    return-void
.end method

.method public setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .line 825
    iput-object p1, p0, Lorg/inaturalist/android/ExploreFiltersActivity$DatePickerFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method
