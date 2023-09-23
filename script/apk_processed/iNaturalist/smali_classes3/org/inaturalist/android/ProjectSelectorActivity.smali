.class public Lorg/inaturalist/android/ProjectSelectorActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProjectSelectorActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;,
        Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;
    }
.end annotation


# static fields
.field public static final IS_CONFIRMATION:Ljava/lang/String; = "is_confirmation"

.field public static final PROJECT_FIELDS:Ljava/lang/String; = "project_fields"

.field public static final PROJECT_IDS:Ljava/lang/String; = "project_ids"

.field private static final TAG:Ljava/lang/String; = "INAT:ProjectSelectorAct"

.field public static final UMBRELLA_PROJECT_IDs:Ljava/lang/String; = "umbrella_project_ids"


# instance fields
.field private mAdapter:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

.field private mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mHelper:Lorg/inaturalist/android/ActivityHelper;

.field public mIsConfirmation:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field private mLastProjectFieldFocused:I

.field private mLastProjectFieldIndex:I

.field private mLastProjectFieldTop:I

.field private mLastProjectIdFocused:I

.field private mLoadingProjects:Landroid/widget/TextView;

.field public mObservationId:I
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mObservationProjects:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mProjectFieldValues:Ljava/util/HashMap;
    .annotation build Lcom/evernote/android/state/State;
        value = Lorg/inaturalist/android/AndroidStateBundlers$SerializableBundler;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/inaturalist/android/ProjectFieldValue;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectFieldViewers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/ProjectFieldViewer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProjectFields:Ljava/util/ArrayList;

.field private mProjectList:Landroid/widget/ListView;

.field private mProjectReceiver:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

.field private mSaveButton:Landroid/widget/ImageButton;

.field private mSearchText:Landroid/widget/EditText;

.field public mShownSearchBox:Z
    .annotation build Lcom/evernote/android/state/State;
    .end annotation
.end field

.field public mUmbrellaProjects:Ljava/util/ArrayList;
    .annotation build Lcom/evernote/android/state/State;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mShownSearchBox:Z

    const/4 v0, -0x1

    .line 85
    iput v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldFocused:I

    .line 86
    iput v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectIdFocused:I

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ProjectSelectorActivity;)Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectReceiver:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    return-object p0
.end method

.method static synthetic access$100(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLoadingProjects:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/inaturalist/android/ProjectSelectorActivity;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/inaturalist/android/ProjectSelectorActivity;)Ljava/util/HashMap;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/inaturalist/android/ProjectSelectorActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldFocused:I

    return p1
.end method

.method static synthetic access$1302(Lorg/inaturalist/android/ProjectSelectorActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectIdFocused:I

    return p1
.end method

.method static synthetic access$1400(Lorg/inaturalist/android/ProjectSelectorActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldIndex:I

    return p0
.end method

.method static synthetic access$1402(Lorg/inaturalist/android/ProjectSelectorActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldIndex:I

    return p1
.end method

.method static synthetic access$1500(Lorg/inaturalist/android/ProjectSelectorActivity;)I
    .locals 0

    .line 56
    iget p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldTop:I

    return p0
.end method

.method static synthetic access$1502(Lorg/inaturalist/android/ProjectSelectorActivity;I)I
    .locals 0

    .line 56
    iput p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldTop:I

    return p1
.end method

.method static synthetic access$1600(Lorg/inaturalist/android/ProjectSelectorActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->focusProjectField()V

    return-void
.end method

.method static synthetic access$200(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/ListView;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/inaturalist/android/ProjectSelectorActivity;)Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mAdapter:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/ProjectSelectorActivity;Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;)Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mAdapter:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/ProjectSelectorActivity;)Landroid/widget/EditText;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mSearchText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$500(Lorg/inaturalist/android/ProjectSelectorActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iget-object p0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFields:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$502(Lorg/inaturalist/android/ProjectSelectorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 56
    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFields:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$900(Lorg/inaturalist/android/ProjectSelectorActivity;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->saveProjectFieldValues()V

    return-void
.end method

.method private focusProjectField()V
    .locals 9

    .line 606
    iget v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectIdFocused:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldFocused:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 611
    iget-object v3, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 612
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/ProjectFieldViewer;

    .line 613
    invoke-virtual {v4}, Lorg/inaturalist/android/ProjectFieldViewer;->getField()Lorg/inaturalist/android/ProjectField;

    move-result-object v5

    .line 614
    iget v6, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldFocused:I

    iget-object v5, v5, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v6, v5, :cond_2

    iget v5, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectIdFocused:I

    if-ne v5, v2, :cond_2

    .line 615
    iput v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectIdFocused:I

    .line 616
    iput v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLastProjectFieldFocused:I

    .line 618
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 619
    new-instance v6, Lorg/inaturalist/android/ProjectSelectorActivity$3;

    invoke-direct {v6, p0, v4}, Lorg/inaturalist/android/ProjectSelectorActivity$3;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity;Lorg/inaturalist/android/ProjectFieldViewer;)V

    const-wide/16 v7, 0x5

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private saveProjectFieldValues()V
    .locals 6

    .line 360
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 361
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/ProjectFieldViewer;

    .line 366
    invoke-virtual {v2}, Lorg/inaturalist/android/ProjectFieldViewer;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 367
    invoke-virtual {v2}, Lorg/inaturalist/android/ProjectFieldViewer;->getField()Lorg/inaturalist/android/ProjectField;

    move-result-object v2

    iget-object v2, v2, Lorg/inaturalist/android/ProjectField;->field_id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 368
    iget-object v4, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/ProjectFieldValue;

    if-nez v4, :cond_2

    .line 370
    new-instance v4, Lorg/inaturalist/android/ProjectFieldValue;

    invoke-direct {v4}, Lorg/inaturalist/android/ProjectFieldValue;-><init>()V

    .line 371
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v4, Lorg/inaturalist/android/ProjectFieldValue;->field_id:Ljava/lang/Integer;

    .line 372
    iget-object v5, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_2
    iput-object v3, v4, Lorg/inaturalist/android/ProjectFieldValue;->value:Ljava/lang/String;

    goto :goto_1

    :cond_3
    return-void
.end method

.method private validateProjectFields()Z
    .locals 6

    .line 674
    iget-boolean v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 677
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 678
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 680
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 681
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    goto :goto_1

    .line 683
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/inaturalist/android/ProjectFieldViewer;

    .line 684
    invoke-virtual {v4}, Lorg/inaturalist/android/ProjectFieldViewer;->isValid()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    const v0, 0x7f1001d6

    .line 685
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProjectSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/inaturalist/android/ProjectFieldViewer;->getField()Lorg/inaturalist/android/ProjectField;

    move-result-object v3

    iget-object v3, v3, Lorg/inaturalist/android/ProjectField;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v4

    .line 691
    :cond_4
    :goto_1
    iput-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    :cond_5
    return v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 659
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x12d

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 664
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 665
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/ProjectFieldViewer;

    .line 666
    invoke-virtual {v0, p3}, Lorg/inaturalist/android/ProjectFieldViewer;->onTaxonSearchResult(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 239
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 240
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->restoreInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 242
    new-instance v0, Lorg/inaturalist/android/ActivityHelper;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    .line 246
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0d00ce

    .line 247
    invoke-virtual {p0, v1}, Lorg/inaturalist/android/ProjectSelectorActivity;->setContentView(I)V

    .line 249
    iget-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lorg/inaturalist/android/INaturalistApp;

    iput-object v1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "observation_id"

    .line 254
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationId:I

    const-string p1, "project_id"

    .line 255
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    const-string p1, "umbrella_project_ids"

    .line 256
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mUmbrellaProjects:Ljava/util/ArrayList;

    const-string p1, "is_confirmation"

    .line 257
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    const-string p1, "project_fields"

    .line 258
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    .line 261
    :cond_1
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    .line 262
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 264
    iget-boolean v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-nez v2, :cond_2

    .line 265
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 266
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 268
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d00cf

    const/4 v3, 0x0

    .line 269
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 270
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    const v2, 0x7f080392

    .line 271
    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    const p1, 0x7f0a02f6

    .line 272
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mSaveButton:Landroid/widget/ImageButton;

    .line 274
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mSaveButton:Landroid/widget/ImageButton;

    new-instance v0, Lorg/inaturalist/android/ProjectSelectorActivity$1;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectSelectorActivity$1;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const v2, 0x7f08014e

    .line 287
    invoke-virtual {p1, v2}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v0, 0x7f100321

    .line 289
    invoke-virtual {p0, v0}, Lorg/inaturalist/android/ProjectSelectorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    const p1, 0x7f0a02ba

    .line 293
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mLoadingProjects:Landroid/widget/TextView;

    const p1, 0x7f0a02b9

    .line 294
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectList:Landroid/widget/ListView;

    const p1, 0x7f0a030e

    .line 296
    invoke-virtual {p0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mSearchText:Landroid/widget/EditText;

    .line 297
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mSearchText:Landroid/widget/EditText;

    const v0, 0x7f10030f

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    .line 298
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mSearchText:Landroid/widget/EditText;

    new-instance v0, Lorg/inaturalist/android/ProjectSelectorActivity$2;

    invoke-direct {v0, p0}, Lorg/inaturalist/android/ProjectSelectorActivity$2;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    iget-boolean p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mShownSearchBox:Z

    if-eqz p1, :cond_3

    .line 312
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 229
    iget-boolean v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mIsConfirmation:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0015

    .line 231
    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const p1, 0x7f0a0011

    .line 634
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/BetterJSONObject;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "project_type"

    .line 638
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, "collection"

    .line 639
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    const-string p3, "umbrella"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    return-void

    :cond_3
    const-string p2, "id"

    .line 646
    invoke-virtual {p1, p2}, Lorg/inaturalist/android/BetterJSONObject;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 648
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 649
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 651
    :cond_4
    iget-object p2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    :goto_1
    iget-object p1, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mAdapter:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;

    invoke-virtual {p1}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 199
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02fd

    if-eq v0, v1, :cond_0

    .line 224
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 208
    :cond_0
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->saveProjectFieldValues()V

    .line 210
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->validateProjectFields()Z

    move-result p1

    if-nez p1, :cond_1

    return v3

    .line 214
    :cond_1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "project_ids"

    .line 216
    iget-object v3, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mObservationProjects:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "project_fields"

    .line 217
    iget-object v3, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldValues:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 220
    invoke-virtual {p0, v0, p1}, Lorg/inaturalist/android/ProjectSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 221
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->finish()V

    return v2

    .line 202
    :cond_2
    invoke-virtual {p0, v3}, Lorg/inaturalist/android/ProjectSelectorActivity;->setResult(I)V

    .line 203
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->finish()V

    return v2
.end method

.method protected onPause()V
    .locals 3

    .line 327
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    .line 329
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectReceiver:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    invoke-static {v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 330
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 332
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectFieldViewers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    goto :goto_0

    .line 335
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/inaturalist/android/ProjectFieldViewer;

    .line 336
    invoke-virtual {v2}, Lorg/inaturalist/android/ProjectFieldViewer;->unregisterReceivers()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 345
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 346
    iget-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    if-nez v0, :cond_0

    .line 347
    invoke-virtual {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/inaturalist/android/INaturalistApp;

    iput-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 350
    :cond_0
    new-instance v0, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;-><init>(Lorg/inaturalist/android/ProjectSelectorActivity;Lorg/inaturalist/android/ProjectSelectorActivity$1;)V

    iput-object v0, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectReceiver:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    .line 351
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_JOINED_PROJECTS_RESULT:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lorg/inaturalist/android/ProjectSelectorActivity;->mProjectReceiver:Lorg/inaturalist/android/ProjectSelectorActivity$ProjectReceiver;

    invoke-static {v2, v0, p0}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 354
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lorg/inaturalist/android/INaturalistService;->ACTION_GET_JOINED_PROJECTS:Ljava/lang/String;

    const-class v3, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v2, v1, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 355
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Lorg/inaturalist/android/ProjectSelectorActivity;->saveProjectFieldValues()V

    .line 321
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 322
    invoke-static {p0, p1}, Lcom/livefront/bridge/Bridge;->saveInstanceState(Ljava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
