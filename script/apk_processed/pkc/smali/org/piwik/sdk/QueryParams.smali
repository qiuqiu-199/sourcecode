.class public final enum Lorg/piwik/sdk/QueryParams;
.super Ljava/lang/Enum;
.source "QueryParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/piwik/sdk/QueryParams;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/piwik/sdk/QueryParams;

.field public static final enum ACTION_NAME:Lorg/piwik/sdk/QueryParams;

.field public static final enum API_VERSION:Lorg/piwik/sdk/QueryParams;

.field public static final enum CAMPAIGN_KEYWORD:Lorg/piwik/sdk/QueryParams;

.field public static final enum CAMPAIGN_NAME:Lorg/piwik/sdk/QueryParams;

.field public static final enum CONTENT_INTERACTION:Lorg/piwik/sdk/QueryParams;

.field public static final enum CONTENT_NAME:Lorg/piwik/sdk/QueryParams;

.field public static final enum CONTENT_PIECE:Lorg/piwik/sdk/QueryParams;

.field public static final enum CONTENT_TARGET:Lorg/piwik/sdk/QueryParams;

.field public static final enum DATETIME_OF_REQUEST:Lorg/piwik/sdk/QueryParams;

.field public static final enum DISCOUNT:Lorg/piwik/sdk/QueryParams;

.field public static final enum DOWNLOAD:Lorg/piwik/sdk/QueryParams;

.field public static final enum ECOMMERCE_ITEMS:Lorg/piwik/sdk/QueryParams;

.field public static final enum EVENT_ACTION:Lorg/piwik/sdk/QueryParams;

.field public static final enum EVENT_CATEGORY:Lorg/piwik/sdk/QueryParams;

.field public static final enum EVENT_NAME:Lorg/piwik/sdk/QueryParams;

.field public static final enum EVENT_VALUE:Lorg/piwik/sdk/QueryParams;

.field public static final enum FIRST_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

.field public static final enum GOAL_ID:Lorg/piwik/sdk/QueryParams;

.field public static final enum HOURS:Lorg/piwik/sdk/QueryParams;

.field public static final enum LANGUAGE:Lorg/piwik/sdk/QueryParams;

.field public static final enum LINK:Lorg/piwik/sdk/QueryParams;

.field public static final enum MINUTES:Lorg/piwik/sdk/QueryParams;

.field public static final enum ORDER_ID:Lorg/piwik/sdk/QueryParams;

.field public static final enum PREVIOUS_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

.field public static final enum RANDOM_NUMBER:Lorg/piwik/sdk/QueryParams;

.field public static final enum RECORD:Lorg/piwik/sdk/QueryParams;

.field public static final enum REFERRER:Lorg/piwik/sdk/QueryParams;

.field public static final enum REVENUE:Lorg/piwik/sdk/QueryParams;

.field public static final enum SCREEN_RESOLUTION:Lorg/piwik/sdk/QueryParams;

.field public static final enum SCREEN_SCOPE_CUSTOM_VARIABLES:Lorg/piwik/sdk/QueryParams;

.field public static final enum SEARCH_CATEGORY:Lorg/piwik/sdk/QueryParams;

.field public static final enum SEARCH_KEYWORD:Lorg/piwik/sdk/QueryParams;

.field public static final enum SEARCH_NUMBER_OF_HITS:Lorg/piwik/sdk/QueryParams;

.field public static final enum SECONDS:Lorg/piwik/sdk/QueryParams;

.field public static final enum SEND_IMAGE:Lorg/piwik/sdk/QueryParams;

.field public static final enum SESSION_START:Lorg/piwik/sdk/QueryParams;

.field public static final enum SHIPPING:Lorg/piwik/sdk/QueryParams;

.field public static final enum SITE_ID:Lorg/piwik/sdk/QueryParams;

.field public static final enum SUBTOTAL:Lorg/piwik/sdk/QueryParams;

.field public static final enum TAX:Lorg/piwik/sdk/QueryParams;

.field public static final enum TOTAL_NUMBER_OF_VISITS:Lorg/piwik/sdk/QueryParams;

.field public static final enum URL_PATH:Lorg/piwik/sdk/QueryParams;

.field public static final enum USER_AGENT:Lorg/piwik/sdk/QueryParams;

.field public static final enum USER_ID:Lorg/piwik/sdk/QueryParams;

.field public static final enum VISITOR_ID:Lorg/piwik/sdk/QueryParams;

.field public static final enum VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/piwik/sdk/QueryParams;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 21
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SITE_ID"

    const-string v2, "idsite"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SITE_ID:Lorg/piwik/sdk/QueryParams;

    .line 27
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "RECORD"

    const-string v2, "rec"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->RECORD:Lorg/piwik/sdk/QueryParams;

    .line 33
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "URL_PATH"

    const-string v2, "url"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    .line 44
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "ACTION_NAME"

    const-string v2, "action_name"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->ACTION_NAME:Lorg/piwik/sdk/QueryParams;

    .line 52
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "VISITOR_ID"

    const-string v2, "_id"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->VISITOR_ID:Lorg/piwik/sdk/QueryParams;

    .line 59
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "RANDOM_NUMBER"

    const-string v2, "rand"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->RANDOM_NUMBER:Lorg/piwik/sdk/QueryParams;

    .line 65
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "API_VERSION"

    const-string v2, "apiv"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->API_VERSION:Lorg/piwik/sdk/QueryParams;

    .line 73
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "REFERRER"

    const-string v2, "urlref"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->REFERRER:Lorg/piwik/sdk/QueryParams;

    .line 80
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "VISIT_SCOPE_CUSTOM_VARIABLES"

    const-string v2, "_cvar"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/piwik/sdk/QueryParams;

    .line 88
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "TOTAL_NUMBER_OF_VISITS"

    const-string v2, "_idvc"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->TOTAL_NUMBER_OF_VISITS:Lorg/piwik/sdk/QueryParams;

    .line 93
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "PREVIOUS_VISIT_TIMESTAMP"

    const-string v2, "_viewts"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->PREVIOUS_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    .line 99
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "FIRST_VISIT_TIMESTAMP"

    const-string v2, "_idts"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->FIRST_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    .line 105
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "CAMPAIGN_NAME"

    const-string v2, "_rcn"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->CAMPAIGN_NAME:Lorg/piwik/sdk/QueryParams;

    .line 111
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "CAMPAIGN_KEYWORD"

    const-string v2, "_rck"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->CAMPAIGN_KEYWORD:Lorg/piwik/sdk/QueryParams;

    .line 115
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SCREEN_RESOLUTION"

    const-string v2, "res"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SCREEN_RESOLUTION:Lorg/piwik/sdk/QueryParams;

    .line 119
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "HOURS"

    const-string v2, "h"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->HOURS:Lorg/piwik/sdk/QueryParams;

    .line 123
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "MINUTES"

    const-string v2, "m"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->MINUTES:Lorg/piwik/sdk/QueryParams;

    .line 127
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SECONDS"

    const-string v2, "s"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SECONDS:Lorg/piwik/sdk/QueryParams;

    .line 132
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "USER_AGENT"

    const-string v2, "ua"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->USER_AGENT:Lorg/piwik/sdk/QueryParams;

    .line 137
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "LANGUAGE"

    const-string v2, "lang"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->LANGUAGE:Lorg/piwik/sdk/QueryParams;

    .line 146
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "USER_ID"

    const-string v2, "uid"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->USER_ID:Lorg/piwik/sdk/QueryParams;

    .line 150
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SESSION_START"

    const-string v2, "new_visit"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SESSION_START:Lorg/piwik/sdk/QueryParams;

    .line 160
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SCREEN_SCOPE_CUSTOM_VARIABLES"

    const-string v2, "cvar"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SCREEN_SCOPE_CUSTOM_VARIABLES:Lorg/piwik/sdk/QueryParams;

    .line 165
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "LINK"

    const-string v2, "link"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->LINK:Lorg/piwik/sdk/QueryParams;

    .line 170
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "DOWNLOAD"

    const-string v2, "download"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->DOWNLOAD:Lorg/piwik/sdk/QueryParams;

    .line 175
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SEARCH_KEYWORD"

    const-string v2, "search"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SEARCH_KEYWORD:Lorg/piwik/sdk/QueryParams;

    .line 179
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SEARCH_CATEGORY"

    const-string v2, "search_cat"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SEARCH_CATEGORY:Lorg/piwik/sdk/QueryParams;

    .line 183
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SEARCH_NUMBER_OF_HITS"

    const-string v2, "search_count"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SEARCH_NUMBER_OF_HITS:Lorg/piwik/sdk/QueryParams;

    .line 187
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "GOAL_ID"

    const-string v2, "idgoal"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->GOAL_ID:Lorg/piwik/sdk/QueryParams;

    .line 192
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "REVENUE"

    const-string v2, "revenue"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->REVENUE:Lorg/piwik/sdk/QueryParams;

    .line 201
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "DATETIME_OF_REQUEST"

    const-string v2, "cdt"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->DATETIME_OF_REQUEST:Lorg/piwik/sdk/QueryParams;

    .line 209
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "CONTENT_NAME"

    const-string v2, "c_n"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->CONTENT_NAME:Lorg/piwik/sdk/QueryParams;

    .line 215
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "CONTENT_PIECE"

    const-string v2, "c_p"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->CONTENT_PIECE:Lorg/piwik/sdk/QueryParams;

    .line 221
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "CONTENT_TARGET"

    const-string v2, "c_t"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->CONTENT_TARGET:Lorg/piwik/sdk/QueryParams;

    .line 227
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "CONTENT_INTERACTION"

    const-string v2, "c_i"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->CONTENT_INTERACTION:Lorg/piwik/sdk/QueryParams;

    .line 234
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "EVENT_CATEGORY"

    const-string v2, "e_c"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->EVENT_CATEGORY:Lorg/piwik/sdk/QueryParams;

    .line 240
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "EVENT_ACTION"

    const-string v2, "e_a"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->EVENT_ACTION:Lorg/piwik/sdk/QueryParams;

    .line 246
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "EVENT_NAME"

    const-string v2, "e_n"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->EVENT_NAME:Lorg/piwik/sdk/QueryParams;

    .line 252
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "EVENT_VALUE"

    const-string v2, "e_v"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->EVENT_VALUE:Lorg/piwik/sdk/QueryParams;

    .line 258
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "ECOMMERCE_ITEMS"

    const-string v2, "ec_items"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->ECOMMERCE_ITEMS:Lorg/piwik/sdk/QueryParams;

    .line 263
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "TAX"

    const-string v2, "ec_tx"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->TAX:Lorg/piwik/sdk/QueryParams;

    .line 268
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "ORDER_ID"

    const-string v2, "ec_id"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->ORDER_ID:Lorg/piwik/sdk/QueryParams;

    .line 273
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SHIPPING"

    const-string v2, "ec_sh"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SHIPPING:Lorg/piwik/sdk/QueryParams;

    .line 278
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "DISCOUNT"

    const-string v2, "ec_dt"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->DISCOUNT:Lorg/piwik/sdk/QueryParams;

    .line 283
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SUBTOTAL"

    const-string v2, "ec_st"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SUBTOTAL:Lorg/piwik/sdk/QueryParams;

    .line 290
    new-instance v0, Lorg/piwik/sdk/QueryParams;

    const-string v1, "SEND_IMAGE"

    const-string v2, "send_image"

    const/16 v15, 0x2d

    invoke-direct {v0, v1, v15, v2}, Lorg/piwik/sdk/QueryParams;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/piwik/sdk/QueryParams;->SEND_IMAGE:Lorg/piwik/sdk/QueryParams;

    const/16 v0, 0x2e

    .line 14
    new-array v0, v0, [Lorg/piwik/sdk/QueryParams;

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SITE_ID:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v3

    sget-object v1, Lorg/piwik/sdk/QueryParams;->RECORD:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v4

    sget-object v1, Lorg/piwik/sdk/QueryParams;->URL_PATH:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v5

    sget-object v1, Lorg/piwik/sdk/QueryParams;->ACTION_NAME:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v6

    sget-object v1, Lorg/piwik/sdk/QueryParams;->VISITOR_ID:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v7

    sget-object v1, Lorg/piwik/sdk/QueryParams;->RANDOM_NUMBER:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v8

    sget-object v1, Lorg/piwik/sdk/QueryParams;->API_VERSION:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v9

    sget-object v1, Lorg/piwik/sdk/QueryParams;->REFERRER:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v10

    sget-object v1, Lorg/piwik/sdk/QueryParams;->VISIT_SCOPE_CUSTOM_VARIABLES:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v11

    sget-object v1, Lorg/piwik/sdk/QueryParams;->TOTAL_NUMBER_OF_VISITS:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v12

    sget-object v1, Lorg/piwik/sdk/QueryParams;->PREVIOUS_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v13

    sget-object v1, Lorg/piwik/sdk/QueryParams;->FIRST_VISIT_TIMESTAMP:Lorg/piwik/sdk/QueryParams;

    aput-object v1, v0, v14

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CAMPAIGN_NAME:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CAMPAIGN_KEYWORD:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SCREEN_RESOLUTION:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->HOURS:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->MINUTES:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SECONDS:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->USER_AGENT:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->LANGUAGE:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->USER_ID:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SESSION_START:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SCREEN_SCOPE_CUSTOM_VARIABLES:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->LINK:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->DOWNLOAD:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SEARCH_KEYWORD:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SEARCH_CATEGORY:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SEARCH_NUMBER_OF_HITS:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->GOAL_ID:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->REVENUE:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->DATETIME_OF_REQUEST:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_NAME:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_PIECE:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_TARGET:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->CONTENT_INTERACTION:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->EVENT_CATEGORY:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->EVENT_ACTION:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->EVENT_NAME:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->EVENT_VALUE:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->ECOMMERCE_ITEMS:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->TAX:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->ORDER_ID:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SHIPPING:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->DISCOUNT:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SUBTOTAL:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lorg/piwik/sdk/QueryParams;->SEND_IMAGE:Lorg/piwik/sdk/QueryParams;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sput-object v0, Lorg/piwik/sdk/QueryParams;->$VALUES:[Lorg/piwik/sdk/QueryParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 295
    iput-object p3, p0, Lorg/piwik/sdk/QueryParams;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/piwik/sdk/QueryParams;
    .locals 1

    .line 14
    const-class v0, Lorg/piwik/sdk/QueryParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/piwik/sdk/QueryParams;

    return-object p0
.end method

.method public static values()[Lorg/piwik/sdk/QueryParams;
    .locals 1

    .line 14
    sget-object v0, Lorg/piwik/sdk/QueryParams;->$VALUES:[Lorg/piwik/sdk/QueryParams;

    invoke-virtual {v0}, [Lorg/piwik/sdk/QueryParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/piwik/sdk/QueryParams;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/piwik/sdk/QueryParams;->value:Ljava/lang/String;

    return-object v0
.end method
