.class Lorg/inaturalist/android/ObservationSearchActivity$1;
.super Ljava/lang/Object;
.source "ObservationSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ObservationSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ObservationSearchActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ObservationSearchActivity;Landroid/database/Cursor;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    iput-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .line 158
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 p3, 0x8

    if-nez p2, :cond_0

    .line 159
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$100(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$200(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 163
    :cond_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-virtual {p2}, Lorg/inaturalist/android/ObservationSearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 166
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationSearchActivity;->access$300(Lorg/inaturalist/android/ObservationSearchActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationSearchActivity;->access$400(Lorg/inaturalist/android/ObservationSearchActivity;)Lorg/inaturalist/android/INaturalistApp;

    move-result-object p2

    invoke-virtual {p2}, Lorg/inaturalist/android/INaturalistApp;->loggedIn()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$602(Lorg/inaturalist/android/ObservationSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 184
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/inaturalist/android/ObservationSearchActivity;->access$702(Lorg/inaturalist/android/ObservationSearchActivity;J)J

    .line 186
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lorg/inaturalist/android/ObservationSearchActivity$1$1;

    invoke-direct {p2, p0}, Lorg/inaturalist/android/ObservationSearchActivity$1$1;-><init>(Lorg/inaturalist/android/ObservationSearchActivity$1;)V

    const-wide/16 p3, 0x258

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 168
    :cond_2
    :goto_0
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationSearchActivity;->access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationSearchActivity;->access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;

    move-result-object p2

    instance-of p2, p2, Lorg/inaturalist/android/ObservationCursorAdapter;

    if-nez p2, :cond_4

    .line 169
    :cond_3
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    new-instance v0, Lorg/inaturalist/android/ObservationCursorAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    iget-object v2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1, v2}, Lorg/inaturalist/android/ObservationCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-static {p2, v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$502(Lorg/inaturalist/android/ObservationSearchActivity;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 170
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    iget-object v0, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {v0}, Lorg/inaturalist/android/ObservationSearchActivity;->access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/inaturalist/android/ObservationSearchActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    :cond_4
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationSearchActivity;->access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;

    move-result-object p2

    check-cast p2, Lorg/inaturalist/android/ObservationCursorAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/inaturalist/android/ObservationCursorAdapter;->refreshCursor(Ljava/lang/String;)V

    .line 175
    iget-object p2, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p2}, Lorg/inaturalist/android/ObservationSearchActivity;->access$500(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/ListAdapter;

    move-result-object p2

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    if-nez p2, :cond_5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 176
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$200(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 178
    :cond_5
    iget-object p1, p0, Lorg/inaturalist/android/ObservationSearchActivity$1;->this$0:Lorg/inaturalist/android/ObservationSearchActivity;

    invoke-static {p1}, Lorg/inaturalist/android/ObservationSearchActivity;->access$200(Lorg/inaturalist/android/ObservationSearchActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
