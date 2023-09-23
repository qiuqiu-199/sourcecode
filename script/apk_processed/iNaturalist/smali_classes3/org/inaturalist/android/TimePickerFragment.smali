.class public Lorg/inaturalist/android/TimePickerFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TimePickerFragment.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field private mDate:Landroid/widget/TextView;

.field private mHour:I

.field private mIsCanceled:Z

.field private mMinute:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lorg/inaturalist/android/TimePickerFragment;->mIsCanceled:Z

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    .line 26
    iget-object p1, p0, Lorg/inaturalist/android/TimePickerFragment;->mDate:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lorg/inaturalist/android/TimePickerFragment;->mIsCanceled:Z

    const-string v1, ""

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0xc

    const/16 v3, 0xb

    if-eqz v1, :cond_0

    .line 33
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v4, ":"

    .line 37
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v0, v4, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Ljava/util/Calendar;->set(II)V

    const-string v0, ":"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    move-object p1, v1

    .line 41
    :goto_0
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 42
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 45
    new-instance p1, Landroid/app/TimePickerDialog;

    invoke-virtual {p0}, Lorg/inaturalist/android/TimePickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v9, 0x1

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v4 .. v9}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 46
    invoke-virtual {p1, p0}, Landroid/app/TimePickerDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 47
    invoke-virtual {p1, p0}, Landroid/app/TimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 57
    iget-boolean p1, p0, Lorg/inaturalist/android/TimePickerFragment;->mIsCanceled:Z

    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lorg/inaturalist/android/TimePickerFragment;->mDate:Landroid/widget/TextView;

    const-string v0, "%02d:%02d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lorg/inaturalist/android/TimePickerFragment;->mHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/inaturalist/android/TimePickerFragment;->mMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-virtual {p0}, Lorg/inaturalist/android/TimePickerFragment;->dismiss()V

    return-void
.end method

.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 66
    iput p2, p0, Lorg/inaturalist/android/TimePickerFragment;->mHour:I

    .line 67
    iput p3, p0, Lorg/inaturalist/android/TimePickerFragment;->mMinute:I

    return-void
.end method

.method public setDate(Landroid/widget/TextView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/inaturalist/android/TimePickerFragment;->mDate:Landroid/widget/TextView;

    return-void
.end method
