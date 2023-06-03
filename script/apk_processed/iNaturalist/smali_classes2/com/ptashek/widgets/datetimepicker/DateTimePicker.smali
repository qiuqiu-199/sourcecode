.class public Lcom/ptashek/widgets/datetimepicker/DateTimePicker;
.super Landroid/widget/RelativeLayout;
.source "DateTimePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# instance fields
.field private datePicker:Landroid/widget/DatePicker;

.field private mCalendar:Ljava/util/Calendar;

.field private timePicker:Landroid/widget/TimePicker;

.field private viewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "layout_inflater"

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const/4 p2, 0x1

    const p3, 0x7f0d003f

    .line 62
    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 p3, 0x0

    const v0, 0x7f0d003e

    .line 65
    invoke-virtual {p1, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0d00eb

    .line 66
    invoke-virtual {p1, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p3

    iput-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const p3, 0x7f0a0007

    .line 71
    invoke-virtual {p0, p3}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ViewSwitcher;

    iput-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->viewSwitcher:Landroid/widget/ViewSwitcher;

    const p3, 0x7f0a0004

    .line 74
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/DatePicker;

    iput-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->datePicker:Landroid/widget/DatePicker;

    .line 75
    iget-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->datePicker:Landroid/widget/DatePicker;

    iget-object v1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p3, v1, v2, v3, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    const p3, 0x7f0a0012

    .line 78
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TimePicker;

    iput-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->timePicker:Landroid/widget/TimePicker;

    .line 79
    iget-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {p3, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 80
    iget-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    const p3, 0x7f0a000f

    .line 83
    invoke-virtual {p0, p3}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p3, 0x7f0a000e

    .line 84
    invoke-virtual {p0, p3}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->viewSwitcher:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;I)V

    .line 88
    iget-object p3, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p3, p1, p2}, Landroid/widget/ViewSwitcher;->addView(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    return p1
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeMillis()J
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public is24HourView()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f0a000e

    .line 115
    invoke-virtual {p0, p1}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    goto :goto_0

    .line 108
    :pswitch_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    const p1, 0x7f0a000f

    .line 109
    invoke-virtual {p0, p1}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 110
    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->viewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showPrevious()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a000e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 6

    .line 101
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/Calendar;->set(IIIII)V

    return-void
.end method

.method public reset()V
    .locals 4

    .line 132
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->updateDate(III)V

    const/16 v1, 0xb

    .line 134
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->updateTime(II)V

    return-void
.end method

.method public setIs24HourView(Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    return-void
.end method

.method public updateDate(III)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->datePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    return-void
.end method

.method public updateTime(II)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 160
    iget-object p1, p0, Lcom/ptashek/widgets/datetimepicker/DateTimePicker;->timePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
