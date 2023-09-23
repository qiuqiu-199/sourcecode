.class public Lorg/inaturalist/android/DatePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "DatePickerFragment.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field private mDate:Landroid/widget/TextView;

.field private mDay:I

.field private mIsCanceled:Z

.field private mMonth:I

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lorg/inaturalist/android/DatePickerFragment;->mIsCanceled:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 28
    iget-object p1, p0, Lorg/inaturalist/android/DatePickerFragment;->mDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lorg/inaturalist/android/DatePickerFragment;->mIsCanceled:Z

    const-string v0, ""

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    goto :goto_1

    .line 38
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 41
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    move-object p1, v0

    :goto_1
    const/4 v0, 0x1

    .line 47
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v0, 0x2

    .line 48
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v0, 0x5

    .line 49
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 52
    new-instance p1, Landroid/app/DatePickerDialog;

    invoke-virtual {p0}, Lorg/inaturalist/android/DatePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 53
    invoke-virtual {p1, p0}, Landroid/app/DatePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 54
    invoke-virtual {p1, p0}, Landroid/app/DatePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p1
.end method

.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 72
    iput p2, p0, Lorg/inaturalist/android/DatePickerFragment;->mYear:I

    .line 73
    iput p3, p0, Lorg/inaturalist/android/DatePickerFragment;->mMonth:I

    .line 74
    iput p4, p0, Lorg/inaturalist/android/DatePickerFragment;->mDay:I

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 64
    iget-boolean p1, p0, Lorg/inaturalist/android/DatePickerFragment;->mIsCanceled:Z

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lorg/inaturalist/android/DatePickerFragment;->mDate:Landroid/widget/TextView;

    const-string v0, "%d-%02d-%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/inaturalist/android/DatePickerFragment;->mYear:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lorg/inaturalist/android/DatePickerFragment;->mMonth:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget v3, p0, Lorg/inaturalist/android/DatePickerFragment;->mDay:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/DatePickerFragment;->dismiss()V

    return-void
.end method

.method public setDate(Landroid/widget/TextView;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lorg/inaturalist/android/DatePickerFragment;->mDate:Landroid/widget/TextView;

    return-void
.end method
