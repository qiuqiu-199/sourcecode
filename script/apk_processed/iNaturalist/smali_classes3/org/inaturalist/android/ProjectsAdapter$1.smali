.class Lorg/inaturalist/android/ProjectsAdapter$1;
.super Landroid/widget/Filter;
.source "ProjectsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/ProjectsAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lorg/inaturalist/android/ProjectsAdapter$OnLoading;Ljava/util/List;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/ProjectsAdapter;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/ProjectsAdapter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    .line 142
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 144
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectsAdapter;->access$000(Lorg/inaturalist/android/ProjectsAdapter;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 146
    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 149
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/ProjectsAdapter;->access$100(Lorg/inaturalist/android/ProjectsAdapter;)Lorg/inaturalist/android/ProjectsAdapter$OnLoading;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-static {v2}, Lorg/inaturalist/android/ProjectsAdapter;->access$100(Lorg/inaturalist/android/ProjectsAdapter;)Lorg/inaturalist/android/ProjectsAdapter$OnLoading;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/inaturalist/android/ProjectsAdapter$OnLoading;->onLoading(Ljava/lang/Boolean;I)V

    .line 153
    :cond_1
    iget-object v2, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    iput-object v3, v2, Lorg/inaturalist/android/ProjectsAdapter;->mCurrentSearchString:Ljava/lang/String;

    .line 154
    iget-object v2, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/inaturalist/android/ProjectsAdapter;->access$200(Lorg/inaturalist/android/ProjectsAdapter;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 156
    iget-object v3, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    iget-object v3, v3, Lorg/inaturalist/android/ProjectsAdapter;->mCurrentSearchString:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    if-nez v2, :cond_3

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    :cond_3
    iput-object v2, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 167
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 172
    :cond_4
    :goto_0
    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectsAdapter;->access$100(Lorg/inaturalist/android/ProjectsAdapter;)Lorg/inaturalist/android/ProjectsAdapter$OnLoading;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-static {p1}, Lorg/inaturalist/android/ProjectsAdapter;->access$100(Lorg/inaturalist/android/ProjectsAdapter;)Lorg/inaturalist/android/ProjectsAdapter$OnLoading;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    invoke-interface {p1, v1, v2}, Lorg/inaturalist/android/ProjectsAdapter$OnLoading;->onLoading(Ljava/lang/Boolean;I)V

    :cond_5
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 179
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez p1, :cond_0

    .line 180
    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lorg/inaturalist/android/ProjectsAdapter;->access$302(Lorg/inaturalist/android/ProjectsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 181
    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProjectsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 184
    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lorg/inaturalist/android/ProjectsAdapter;->access$302(Lorg/inaturalist/android/ProjectsAdapter;Ljava/util/List;)Ljava/util/List;

    .line 187
    :cond_1
    iget-object p1, p0, Lorg/inaturalist/android/ProjectsAdapter$1;->this$0:Lorg/inaturalist/android/ProjectsAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProjectsAdapter;->notifyDataSetInvalidated()V

    :goto_0
    return-void
.end method
